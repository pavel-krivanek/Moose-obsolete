Class {
	#name : #FmxCInvocationGenerated,
	#superclass : #MooseEntity,
	#instVars : [
		'#sender => FMOne type: #FmxNGTWithInvocations opposite: #outgoingInvocations',
		'#candidates => FMMany type: #FmxNGTInvocable opposite: #incomingInvocations',
		'#receiver => FMOne type: #FmxNGTInvocationsReceiver opposite: #receivingInvocations'
	],
	#category : #'FmxC-Entities'
}

{ #category : #meta }
FmxCInvocationGenerated class >> annotation [

	<MSEClass: #Invocation super: #MooseEntity>
	<package: #FmxC>
	^self
]

{ #category : #meta }
FmxCInvocationGenerated class >> metamodel [

	^ CMetamodelGenerator metamodel
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCInvocationGenerated class >> potentialContainers [

	| relations | 
	
	relations := self relationSlots.
	
	"check if we have more than one relation slot. If yes, this metod needs to be overriden"
	
	(relations size ~= 1) ifTrue: [ ^ self subclassResponsibility ].
	
	^ (relations collect: #name)
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCInvocationGenerated class >> potentialPrimaryContainer [

	^ self potentialContainers first.
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCInvocationGenerated class >> potentialSecondaryContainers [

	^ {}
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCInvocationGenerated class >> relationSlots [ 

	^ (self slots select: [:aSlot | aSlot isFMRelationSlot]).


]

{ #category : #meta }
FmxCInvocationGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxCInvocationGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTInvocation}
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCInvocationGenerated class >> traitsGroup [

	"answer all traits in relation with this trait (including itself)"
	
	^ {self}, (self traitsGroupExcept: {self})
	
	
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCInvocationGenerated class >> traitsGroupExcept: aSetOfTraits [
	
	| found targetClasses | 
	
	targetClasses := (self relationSlots collect: #targetClass) copyWithoutAll: aSetOfTraits.
	
	found := targetClasses asOrderedCollection.
	targetClasses do: [ :each | 
		found addAll: (each traitsGroupExcept: aSetOfTraits, targetClasses) ].
	
	^ found
	
	
	
	
]

{ #category : #'_fromTrait_FmxNGTInvocationGenerated' }
FmxCInvocationGenerated >> candidates [

	<target>

	^ candidates
]

{ #category : #'_fromTrait_FmxNGTInvocationGenerated' }
FmxCInvocationGenerated >> candidates: anObject [

	candidates value: anObject

]

{ #category : #'_fromTrait_FmxNGTInvocationGenerated' }
FmxCInvocationGenerated >> receiver [

	<MSEComment: 'Named entity (variable, class...) receiving the invocation. to-side of the association'>
	^ receiver
]

{ #category : #'_fromTrait_FmxNGTInvocationGenerated' }
FmxCInvocationGenerated >> receiver: anObject [

	receiver := anObject

]

{ #category : #'_fromTrait_FmxNGTInvocationGenerated' }
FmxCInvocationGenerated >> sender [

	<MSEComment: 'Behavioural entity making the call. from-side of the association'>
	<source>

	^ sender
]

{ #category : #'_fromTrait_FmxNGTInvocationGenerated' }
FmxCInvocationGenerated >> sender: anObject [

	sender := anObject

]
