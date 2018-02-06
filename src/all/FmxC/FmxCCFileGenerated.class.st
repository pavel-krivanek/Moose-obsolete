Class {
	#name : #FmxCCFileGenerated,
	#superclass : #FmxCFileGenerated,
	#instVars : [
		'#module => FMOne type: #FmxCTModule opposite: #cFile'
	],
	#category : #'FmxC-Entities'
}

{ #category : #meta }
FmxCCFileGenerated class >> annotation [

	<MSEClass: #CFile super: #FmxCFileGenerated>
	<package: #FmxC>
	^self
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCCFileGenerated class >> potentialContainers [

	| relations | 
	
	relations := self relationSlots.
	
	"check if we have more than one relation slot. If yes, this metod needs to be overriden"
	
	(relations size ~= 1) ifTrue: [ ^ self subclassResponsibility ].
	
	^ (relations collect: #name)
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCCFileGenerated class >> potentialPrimaryContainer [

	^ self potentialContainers first.
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCCFileGenerated class >> potentialSecondaryContainers [

	^ {}
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCCFileGenerated class >> relationSlots [ 

	^ (self slots select: [:aSlot | aSlot isFMRelationSlot]).


]

{ #category : #meta }
FmxCCFileGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxCCFileGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxCTCFile}
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCCFileGenerated class >> traitsGroup [

	"answer all traits in relation with this trait (including itself)"
	
	^ {self}, (self traitsGroupExcept: {self})
	
	
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCCFileGenerated class >> traitsGroupExcept: aSetOfTraits [
	
	| found targetClasses | 
	
	targetClasses := (self relationSlots collect: #targetClass) copyWithoutAll: aSetOfTraits.
	
	found := targetClasses asOrderedCollection.
	targetClasses do: [ :each | 
		found addAll: (each traitsGroupExcept: aSetOfTraits, targetClasses) ].
	
	^ found
	
	
	
	
]

{ #category : #'_fromTrait_FmxCTCFileGenerated' }
FmxCCFileGenerated >> module [

	<container>

	^ module
]

{ #category : #'_fromTrait_FmxCTCFileGenerated' }
FmxCCFileGenerated >> module: anObject [

	module := anObject

]
