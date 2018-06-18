Class {
	#name : #FmxNGStInvocation,
	#superclass : #FmxNGStAssociation,
	#traits : 'FmxNGTInvocation + FmxNGTWithSignature',
	#classTraits : 'FmxNGTInvocation classTrait + FmxNGTWithSignature classTrait',
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStInvocation class >> annotation [

	<generated>
	<MSEClass: #Invocation super: #FmxNGStAssociation>
	<package: #'FmxNGPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGStInvocation class >> generatedSlotNames [
	<generated>
	'FmxNGStInvocation class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGStInvocation class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTInvocation FmxNGTWithSignature)
]

{ #category : #meta }
FmxNGStInvocation class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'instance creation' }
FmxNGStInvocation >> from [
	^ self sender
]

{ #category : #'instance creation' }
FmxNGStInvocation >> from: aSender [
	self sender: aSender
]

{ #category : #'instance creation' }
FmxNGStInvocation >> getReceivingFAMIXClass [
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

{ #category : #'instance creation' }
FmxNGStInvocation >> initialize [

	super initialize.
	signature := 'nosignature'.
]

{ #category : #'instance creation' }
FmxNGStInvocation >> isASureInvocation [
	"Test if the receiver (an invocation) is sure (i.e. we know for sure the class of the invocation's receiver)"
	| invoRVar |
	invoRVar := self receiver.
	^(invoRVar notNil) and: 
			[invoRVar class = FmxNGStClass or: [invoRVar isImplicitVariable and: [invoRVar isSelf or: [invoRVar isSuper]]]]
]

{ #category : #'instance creation' }
FmxNGStInvocation >> to [
	^ self candidates
]

{ #category : #'instance creation' }
FmxNGStInvocation >> to: aCollCandidates [
	self candidates: aCollCandidates 
]
