Class {
	#name : #SqueakInstvarInterfaceExtractor,
	#superclass : #InstvarInterfaceExtractor,
	#category : 'RoelTyper-Squeak'
}

{ #category : #'instruction decoding' }
SqueakInstvarInterfaceExtractor >> blockReturnTop [
	"Return Top Of Stack bytecode."

	^self pop
]

{ #category : #'instruction decoding' }
SqueakInstvarInterfaceExtractor >> doDup [
	"Duplicate Top Of Stack bytecode."

	self dupFirst
]

{ #category : #'instruction decoding' }
SqueakInstvarInterfaceExtractor >> doPop [
	"Remove Top Of Stack bytecode."

	^self pop
]

{ #category : #'instruction decoding' }
SqueakInstvarInterfaceExtractor >> jump: delta [
	| currentPC |
	currentPC := self input pc.
	delta < 1 ifTrue: [^self].
	self saveStacks
		at: currentPC + delta
		put: stack copy.
	stack := OrderedCollection new.
	
]

{ #category : #'instruction decoding' }
SqueakInstvarInterfaceExtractor >> jump: delta if: condition [
	|top|
	(top := stack last)
	 isInteger ifTrue: [
		collector addAssignment: Boolean to: top.
		]
	ifFalse: [
		(top isVariableBinding and: [top key = #temp]) ifTrue: [collector addAssignment: Boolean toTmp: top value]
		ifFalse: [
			(top isVariableBinding and: [top key = #return]) ifTrue: [collector addAssignment: Boolean toReturnOf: top value]
			]
		].
	self pop.	"receiver of ifTrue or ifFalse, according to condition"
	delta < 1 ifTrue: [^self].
	self saveStacks
		at: self input pc + delta
		put:
			(stack copy)
]

{ #category : #'instruction decoding' }
SqueakInstvarInterfaceExtractor >> methodReturnConstant: value [
	"Return Constant bytecode."
	collector addAssignmentForReturn: value class.  
	^self
		pushConstant: value;
		sqReturnTop
]

{ #category : #'instruction decoding' }
SqueakInstvarInterfaceExtractor >> methodReturnReceiver [
	"Return Self bytecode."
	collector addAssignmentForReturnSelf.  
	^self
		pushReceiver;
		sqReturnTop
]

{ #category : #'instruction decoding' }
SqueakInstvarInterfaceExtractor >> methodReturnTop [
	"Return Top Of Stack bytecode."
	collector addAssignmentForReturn: stack last.
	^self sqReturnTop
]

{ #category : #'instruction decoding' }
SqueakInstvarInterfaceExtractor >> popIntoLiteralVariable: anAssociation [
	"Remove Top Of Stack And Store Into Literal Variable bytecode."

	^self pop
]

{ #category : #'instruction decoding' }
SqueakInstvarInterfaceExtractor >> popIntoReceiverVariable: offset [
	"Remove Top Of Stack And Store Into Instance Variable bytecode."

	collector
		handleAssignment: stack removeLast
		for: offset
]

{ #category : #'instruction decoding' }
SqueakInstvarInterfaceExtractor >> popIntoTemporaryVariable: offset [
	"Remove Top Of Stack And Store Into Temporary Variable bytecode."

	"An empty stack => we are in a block"
	
	blockTraversal ifTrue: [blockArgs > 0 ifTrue: [stack addLast: #temp -> offset. collector transformAsBlockArgTheTmpOffset: offset]. blockArgs := blockArgs - 1. blockTraversal := (blockArgs > 0) ].  
	collector
		handleAssignment: stack removeLast
		forTmp: offset
]

{ #category : #'instruction decoding' }
SqueakInstvarInterfaceExtractor >> pushActiveContext [
	"Push Active Context On Top Of Its Own Stack bytecode."

	self pushContext
]

{ #category : #'instruction decoding' }
SqueakInstvarInterfaceExtractor >> pushLiteralVariable: anAssociation [
	"Push Contents Of anAssociation On Top Of Stack bytecode."

	self pushStatic: anAssociation
]

{ #category : #'instruction decoding' }
SqueakInstvarInterfaceExtractor >> pushReceiverVariable: offset [
	"Push Contents Of the Receiver's Instance Variable Whose Index 
	is the argument, offset, On Top Of Stack bytecode."

	self pushInst: offset
]

{ #category : #'instruction decoding' }
SqueakInstvarInterfaceExtractor >> pushTemporaryVariable: offset [
	"Push Contents Of Temporary Variable Whose Index Is the 
	argument, offset, On Top Of Stack bytecode."

	stack add: (#temp -> offset)
]

{ #category : #'instruction decoding' }
SqueakInstvarInterfaceExtractor >> send: selector numArgs: na [
	
	self nativeSend: selector numArgs: na.
	(stack last = #block and: [blockArgs > 0])ifTrue: [blockTraversal := true]
]

{ #category : #'instruction decoding' }
SqueakInstvarInterfaceExtractor >> send: selector super: supered numArgs: numberArguments [
	"Send Message With Selector, selector, bytecode. The argument, 
	supered, indicates whether the receiver of the message is specified with 
	'super' in the source method. The arguments of the message are found in 
	the top numArguments locations on the stack and the receiver just 
	below them."

	^supered
		ifTrue:
			[self
				sendSuper: selector
				numArgs: numberArguments]
		ifFalse:
			[self
				send: selector
				numArgs: numberArguments]
]

{ #category : #opcodes-control }
SqueakInstvarInterfaceExtractor >> sendSuper: selector numArgs: na [
	stack removeLast: na + 1.
	stack add: #computed
]

{ #category : #private }
SqueakInstvarInterfaceExtractor >> sqReturnTop [
	"In VW, method returnTop is inherited from instructionClient and does nothing."

	
]

{ #category : #'instruction decoding' }
SqueakInstvarInterfaceExtractor >> storeIntoLiteralVariable: anAssociation [
	"Store Top Of Stack Into Literal Variable Of Method bytecode."

	"Nothing to do, since I do not do anything with literal variables. Just keep the right-hand side on the stack for further processing"

	
]

{ #category : #'instruction decoding' }
SqueakInstvarInterfaceExtractor >> storeIntoReceiverVariable: offset [
	"Store Top Of Stack Into Instance Variable Of Method bytecode."

	| rvalue |
	collector
		handleAssignment: (rvalue := stack removeLast)
		for: offset.
	stack add: rvalue
]

{ #category : #'instruction decoding' }
SqueakInstvarInterfaceExtractor >> storeIntoTemporaryVariable: offset [
	"Store Top Of Stack Into Temporary Variable Of Method bytecode."

	"Nothing to do,since I do not treat temporary variables for the moment."
	

	| rvalue |
	blockTraversal ifTrue: [blockArgs > 0 ifTrue: [stack addLast: #temp -> offset. collector transformAsBlockArgTheTmpOffset: offset]. blockArgs := blockArgs - 1. blockTraversal := (blockArgs > 0) ].  
	collector
		handleAssignment: (rvalue := stack removeLast)
		forTmp: offset.
	stack add: rvalue
]
