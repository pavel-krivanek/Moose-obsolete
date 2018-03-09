Class {
	#name : #FmxNGInvocation,
	#superclass : #FmxNGInvocationGenerated,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGInvocation class >> annotation [

	<MSEClass: #Invocation super: #FmxNGInvocationGenerated>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #'Famix-Extensions' }
FmxNGInvocation >> accept: aVisitor [

	aVisitor visitInvocation: self
]

{ #category : #accessing }
FmxNGInvocation >> addCandidate: aBehaviouralEntity [ 
	candidates add: aBehaviouralEntity
]

{ #category : #'Famix-Extensions' }
FmxNGInvocation >> anyCandidate [
	^self candidates isEmpty
		ifFalse: [self candidates at: 1]
		ifTrue: [nil]
]

{ #category : #'Famix-Extensions' }
FmxNGInvocation >> copyFrom: anEntity within: aVisitor [
	super copyFrom: anEntity within: aVisitor.
	self sender: (aVisitor visit: anEntity sender).
	self receiver: (aVisitor visit: anEntity receiver).
	self signature: anEntity signature copy.
	anEntity candidates do: [ :c | self addCandidate: (aVisitor visit: c) ]
]

{ #category : #accessing }
FmxNGInvocation >> from [
	^ self sender
]

{ #category : #accessing }
FmxNGInvocation >> from: aSender [
	self sender: aSender
]

{ #category : #'Famix-Extensions' }
FmxNGInvocation >> getReceivingFAMIXClass [
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

{ #category : #'Famix-Implementation' }
FmxNGInvocation >> gtDisplayOn: aStream [
	self from ifNotNil: [ self from gtDisplayOn: aStream ].
	aStream nextPutAll: ' -> '.
	self receiver ifNotNil: [ aStream nextPutAll: self receiver name ].
	aStream nextPut: $#.
	aStream nextPutAll: self signature.
	aStream nextPutAll: ' -> '.
	self candidates size = 1
		ifTrue: [ self anyCandidate gtDisplayOn: aStream ]
]

{ #category : #'Famix-Extensions' }
FmxNGInvocation >> initialize [

	super initialize.
	signature := 'nosignature'.
]

{ #category : #'Famix-Extensions' }
FmxNGInvocation >> isAPotentialInvocation [
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

{ #category : #'Famix-Extensions' }
FmxNGInvocation >> isASureInvocation [
	"Test if the receiver (an invocation) is sure (i.e. we know for sure the class of the invocation's receiver)"
	| invoRVar |
	invoRVar := self receiver.
	^(invoRVar notNil) and: 
			[invoRVar class = FAMIXClass or: [invoRVar isImplicitVariable and: [invoRVar isSelf or: [invoRVar isSuper]]]]
]

{ #category : #'Famix-Implementation' }
FmxNGInvocation >> isInvocation [ 	
	^true
]

{ #category : #'Famix-Implementation' }
FmxNGInvocation >> printOn: aStream [
	super printOn: aStream.
	aStream nextPut: $#.
	aStream << self signature.
	aStream << ' (Invocation)'
]

{ #category : #accessing }
FmxNGInvocation >> receiverSourceCode [
	^ self receiver sourceText
]

{ #category : #accessing }
FmxNGInvocation >> to [
	^ self candidates
]

{ #category : #accessing }
FmxNGInvocation >> to: aCollCandidates [
	self candidates: aCollCandidates 
]
