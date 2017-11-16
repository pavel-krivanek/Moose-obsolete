"
I am responsible for extracting the messages sent to an instance variable and the assignments done to an instance variable. I am supposed to work together with a TypeCollector.

Instance Variables:
	collector	<TypeCollector>	description of collector
	copied	<Array>	description of copied
	initialStack	<Collection | KeyBindingsList | MethodFilterAnd | MethodFilterOr>	description of initialStack
	input	<InstructionStream>	description of input
	method	<CompiledInitializer | CompiledMethod>	description of method
	saveStacks	<Dictionary>	description of saveStacks
	stack	<(OrderedCollection of: Object)>	description of stack


"
Class {
	#name : #InstvarInterfaceExtractor,
	#superclass : #InstructionClient,
	#instVars : [
		'stack',
		'copied',
		'initialStack',
		'method',
		'saveStacks',
		'input',
		'collector',
		'blockTraversal',
		'blockArgs'
	],
	#category : 'RoelTyper-Core'
}

{ #category : #private }
InstvarInterfaceExtractor >> copied: list [
	copied := list
]

{ #category : #'opcodes-data movement' }
InstvarInterfaceExtractor >> dupFirst [
	stack add: stack last
]

{ #category : #extracting }
InstvarInterfaceExtractor >> extractInterfacesFrom: m addTo: aTypeCollector [
	method := m.
	saveStacks := Dictionary new.
	stack := OrderedCollection new.
	"0 to: method numTemps - 1 do: [:i | stack add: #temp -> i ]."
	initialStack := stack copy.
	collector := aTypeCollector.
	input := InstructionStream on: method.
	blockTraversal := false.
	blockArgs := 0.
	[input atEnd]
		whileFalse:
			[self reloadStack.
			input interpretNextInstructionFor: self]
]

{ #category : #private }
InstvarInterfaceExtractor >> initialize [
	super initialize.
	blockTraversal := false.
	blockArgs := 0.
]

{ #category : #private }
InstvarInterfaceExtractor >> input [
	^input
]

{ #category : #private }
InstvarInterfaceExtractor >> method: aMethod [
	method := aMethod.
	copied := #()
]

{ #category : #opcodes-control }
InstvarInterfaceExtractor >> nativeSend: selector numArgs: na [ 
	| receiver args |
	args := stack removeLast: na.
	receiver := stack removeLast.
	receiver isInteger 
		ifTrue: 
			[ collector 
				addSend: selector
				to: receiver ]
		ifFalse: 
			[ receiver isVariableBinding ifTrue: 
				[ receiver key = #temp 
					ifTrue: 
						[ collector 
							addSend: selector
							toTmp: receiver value ]
					ifFalse: 
						[ receiver key = #return ifTrue: 
							[ collector 
								addSend: selector
								onReturnOfSelfMethod: receiver value ] ] ] ].
	(receiver = #self and: [ collector theClass methodDict includesKey: selector ]) ifTrue: 
		[ args doWithIndex: 
			[ :arg :index | 
			collector 
				handleAssignment: arg
				forTmp: index - 1
				in: collector theClass >> selector ] ].
	stack add: (collector 
			pushSendOf: selector
			to: receiver
			args: args)
]

{ #category : #'opcodes-data movement' }
InstvarInterfaceExtractor >> pop [
	stack removeLast
]

{ #category : #'opcodes-data movement' }
InstvarInterfaceExtractor >> pushConstant: value [
	value class == BlockClosure
		ifTrue:
			[self
				readBlock: value method
				copied: 0]
		ifFalse: [
			blockArgs := value.
			stack addLast: value class]
]

{ #category : #'opcodes-data movement' }
InstvarInterfaceExtractor >> pushContext [
	stack add: #context
]

{ #category : #'opcodes-data movement' }
InstvarInterfaceExtractor >> pushInst: index [
	stack add: index
]

{ #category : #'opcodes-data movement' }
InstvarInterfaceExtractor >> pushReceiver [
	stack addLast: #self
]

{ #category : #'opcodes-data movement' }
InstvarInterfaceExtractor >> pushStatic: assoc [
	"assoc can be an association OR a variable binding. I just push the complete association, since it does not interest me for the moment."

	stack addLast: assoc
]

{ #category : #private }
InstvarInterfaceExtractor >> readBlock: block copied: count [
	| newCopied |
	newCopied := stack removeLast: count.
	stack add: #block.
	^(self class new)
		copied: newCopied;
		extractInterfacesFrom: block
			addTo: collector
]

{ #category : #private }
InstvarInterfaceExtractor >> reloadStack [
	stack isNil
		ifTrue:
			[stack := self saveStacks
				at: self input pc
				ifAbsent: [initialStack copy].
			^self].
	stack := self saveStacks
		at: self input pc
		ifAbsent: [stack]
]

{ #category : #private }
InstvarInterfaceExtractor >> saveStacks [
	saveStacks ifNil: [saveStacks := Dictionary new].
	^saveStacks
]

{ #category : #opcodes-control }
InstvarInterfaceExtractor >> send: selector numArgs: na [ 
	^self 
		nativeSend: selector
		numArgs: na
]
