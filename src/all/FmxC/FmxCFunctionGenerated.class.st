Class {
	#name : #FmxCFunctionGenerated,
	#superclass : #FmxCEntityGenerated,
	#instVars : [
		'#functionOwner => FMOne type: #FmxNGTWithFunctions opposite: #functions',
		'#incomingInvocations => FMOne type: #FmxNGTInvocation opposite: #candidates',
		'#outgoingInvocations => FMMany type: #FmxNGTInvocation opposite: #sender'
	],
	#category : #'FmxC-Entities'
}

{ #category : #meta }
FmxCFunctionGenerated class >> annotation [

	<MSEClass: #Function super: #FmxCEntityGenerated>
	<package: #FmxC>
	^self
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCFunctionGenerated class >> potentialContainers [

	| relations | 
	
	relations := self relationSlots.
	
	"check if we have more than one relation slot. If yes, this metod needs to be overriden"
	
	(relations size ~= 1) ifTrue: [ ^ self subclassResponsibility ].
	
	^ (relations collect: #name)
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCFunctionGenerated class >> potentialPrimaryContainer [

	^ self potentialContainers first.
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCFunctionGenerated class >> potentialSecondaryContainers [

	^ {}
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCFunctionGenerated class >> relationSlots [ 

	^ (self slots select: [:aSlot | aSlot isFMRelationSlot]).


]

{ #category : #meta }
FmxCFunctionGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxCFunctionGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTFunction. FmxNGTInvocable. FmxNGTWithInvocations}
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCFunctionGenerated class >> traitsGroup [

	"answer all traits in relation with this trait (including itself)"
	
	^ {self}, (self traitsGroupExcept: {self})
	
	
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCFunctionGenerated class >> traitsGroupExcept: aSetOfTraits [
	
	| found targetClasses | 
	
	targetClasses := (self relationSlots collect: #targetClass) copyWithoutAll: aSetOfTraits.
	
	found := targetClasses asOrderedCollection.
	targetClasses do: [ :each | 
		found addAll: (each traitsGroupExcept: aSetOfTraits, targetClasses) ].
	
	^ found
	
	
	
	
]

{ #category : #'_fromTrait_FmxNGTFunctionGenerated' }
FmxCFunctionGenerated >> functionOwner [

	^ functionOwner
]

{ #category : #'_fromTrait_FmxNGTFunctionGenerated' }
FmxCFunctionGenerated >> functionOwner: anObject [

	functionOwner := anObject

]

{ #category : #'_fromTrait_FmxNGTInvocableGenerated' }
FmxCFunctionGenerated >> incomingInvocations [

	^ incomingInvocations
]

{ #category : #'_fromTrait_FmxNGTInvocableGenerated' }
FmxCFunctionGenerated >> incomingInvocations: anObject [

	incomingInvocations := anObject

]

{ #category : #'_fromTrait_FmxNGTWithInvocationsGenerated' }
FmxCFunctionGenerated >> outgoingInvocations [

	<MSEComment: 'Outgoing invocations sent by this behaviour.'>
	^ outgoingInvocations
]

{ #category : #'_fromTrait_FmxNGTWithInvocationsGenerated' }
FmxCFunctionGenerated >> outgoingInvocations: anObject [

	outgoingInvocations value: anObject

]
