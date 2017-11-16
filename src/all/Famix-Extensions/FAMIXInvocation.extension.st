Extension { #name : #FAMIXInvocation }

{ #category : #'*famix-extensions' }
FAMIXInvocation >> accept: aVisitor [

	aVisitor visitInvocation: self
]

{ #category : #'*famix-extensions' }
FAMIXInvocation >> anyCandidate [
	^self candidates isEmpty
		ifFalse: [self candidates at: 1]
		ifTrue: [nil]
]

{ #category : #'*famix-extensions' }
FAMIXInvocation >> copyFrom: anEntity within: aVisitor [
	super copyFrom: anEntity within: aVisitor.
	self sender: (aVisitor visit: anEntity sender).
	self receiver: (aVisitor visit: anEntity receiver).
	self signature: anEntity signature copy.
	anEntity candidates do: [ :c | self addCandidate: (aVisitor visit: c) ]
]

{ #category : #'*famix-extensions' }
FAMIXInvocation >> getReceivingFAMIXClass [
	|tmpReceiver|
	"return the FAMIXClass of the receiver. If the receiver is a FAMIXClass, this one is returned. If it is self or super, the corresponding FAMIXClass is returned. The receiver may not be nil"
	tmpReceiver := self receiver.
	
	( tmpReceiver isImplicitVariable) 
			ifTrue: [
				|belongsTo|
				belongsTo:= tmpReceiver belongsTo parentType.
				tmpReceiver isSelf ifTrue:[^belongsTo].
				tmpReceiver isSuper ifTrue:[
					belongsTo superclass
						ifNil: [^belongsTo] 
						ifNotNil: [^belongsTo superclass]
				]]
			ifFalse: [^tmpReceiver]
]

{ #category : #'*famix-extensions-testing' }
FAMIXInvocation >> isAPotentialInvocation [
	"test if the sender is a potential invocation"
	| invokedMtdSignature invoRVar invokedMtd |
	invokedMtdSignature := self signature.
	invokedMtdSignature ifNil:[^false].
	invoRVar := self receiver.
			
	invoRVar ifNil:[^true].
	
	(invoRVar isImplicitVariable or: [invoRVar class = FAMIXClass]) ifFalse:[^true].
	
	(invoRVar isImplicitVariable 
	 and: [(invoRVar isSelf or: [invoRVar isSuper]) not]) ifTrue:[^true].
		 
	(invoRVar isImplicitVariable 
	 	and: [(invokedMtd := self getReceivingFAMIXClass lookUp: invokedMtdSignature) isNil 
					or: [invokedMtd isAbstract]]) ifTrue:[^true].

	^false
	
]

{ #category : #'*famix-extensions-testing' }
FAMIXInvocation >> isASureInvocation [
	"Test if the receiver (an invocation) is sure (i.e. we know for sure the class of the invocation's receiver)"
	| invoRVar |
	invoRVar := self receiver.
	^(invoRVar notNil) and: 
			[invoRVar class = FAMIXClass or: [invoRVar isImplicitVariable and: [invoRVar isSelf or: [invoRVar isSuper]]]]
]
