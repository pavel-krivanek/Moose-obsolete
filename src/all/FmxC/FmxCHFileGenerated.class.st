Class {
	#name : #FmxCHFileGenerated,
	#superclass : #FmxCFileGenerated,
	#instVars : [
		'#sender => FMOne type: #FmxNGTWithInvocations opposite: #outgoingInvocations',
		'#candidates => FMMany type: #FmxNGTInvocable opposite: #incomingInvocations',
		'#receiver => FMOne type: #FmxNGTInvocationsReceiver opposite: #receivingInvocations',
		'#module => FMOne type: #FmxCTModule opposite: #hFile'
	],
	#category : #'FmxC-Entities'
}

{ #category : #meta }
FmxCHFileGenerated class >> annotation [

	<MSEClass: #HFile super: #FmxCFileGenerated>
	<package: #FmxC>
	^self
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCHFileGenerated class >> potentialContainers [

	| relations | 
	
	relations := self relationSlots.
	
	"check if we have more than one relation slot. If yes, this metod needs to be overriden"
	
	(relations size ~= 1) ifTrue: [ ^ self subclassResponsibility ].
	
	^ (relations collect: #name)
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCHFileGenerated class >> potentialPrimaryContainer [

	^ self potentialContainers first.
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCHFileGenerated class >> potentialSecondaryContainers [

	^ {}
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCHFileGenerated class >> relationSlots [ 

	^ (self slots select: [:aSlot | aSlot isFMRelationSlot]).


]

{ #category : #meta }
FmxCHFileGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxCHFileGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxCTHFile. FmxNGTInvocation}
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCHFileGenerated class >> traitsGroup [

	"answer all traits in relation with this trait (including itself)"
	
	^ {self}, (self traitsGroupExcept: {self})
	
	
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCHFileGenerated class >> traitsGroupExcept: aSetOfTraits [
	
	| found targetClasses | 
	
	targetClasses := (self relationSlots collect: #targetClass) copyWithoutAll: aSetOfTraits.
	
	found := targetClasses asOrderedCollection.
	targetClasses do: [ :each | 
		found addAll: (each traitsGroupExcept: aSetOfTraits, targetClasses) ].
	
	^ found
	
	
	
	
]

{ #category : #'_fromTrait_FmxNGTInvocationGenerated' }
FmxCHFileGenerated >> candidates [

	<target>

	^ candidates
]

{ #category : #'_fromTrait_FmxNGTInvocationGenerated' }
FmxCHFileGenerated >> candidates: anObject [

	candidates value: anObject

]

{ #category : #'_fromTrait_FmxCTHFileGenerated' }
FmxCHFileGenerated >> module [

	<container>

	^ module
]

{ #category : #'_fromTrait_FmxCTHFileGenerated' }
FmxCHFileGenerated >> module: anObject [

	module := anObject

]

{ #category : #'_fromTrait_FmxNGTInvocationGenerated' }
FmxCHFileGenerated >> receiver [

	<MSEComment: 'Named entity (variable, class...) receiving the invocation. to-side of the association'>
	^ receiver
]

{ #category : #'_fromTrait_FmxNGTInvocationGenerated' }
FmxCHFileGenerated >> receiver: anObject [

	receiver := anObject

]

{ #category : #'_fromTrait_FmxNGTInvocationGenerated' }
FmxCHFileGenerated >> sender [

	<MSEComment: 'Behavioural entity making the call. from-side of the association'>
	<source>

	^ sender
]

{ #category : #'_fromTrait_FmxNGTInvocationGenerated' }
FmxCHFileGenerated >> sender: anObject [

	sender := anObject

]
