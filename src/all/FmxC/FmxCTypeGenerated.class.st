Class {
	#name : #FmxCTypeGenerated,
	#superclass : #FmxCEntityGenerated,
	#category : #'FmxC-Entities'
}

{ #category : #meta }
FmxCTypeGenerated class >> annotation [

	<MSEClass: #Type super: #FmxCEntityGenerated>
	<package: #FmxC>
	^self
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCTypeGenerated class >> potentialContainers [

	| relations | 
	
	relations := self relationSlots.
	
	"check if we have more than one relation slot. If yes, this metod needs to be overriden"
	
	(relations size ~= 1) ifTrue: [ ^ self subclassResponsibility ].
	
	^ (relations collect: #name)
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCTypeGenerated class >> potentialPrimaryContainer [

	^ self potentialContainers first.
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCTypeGenerated class >> potentialSecondaryContainers [

	^ {}
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCTypeGenerated class >> relationSlots [ 

	^ (self slots select: [:aSlot | aSlot isFMRelationSlot]).


]

{ #category : #meta }
FmxCTypeGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxCTypeGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxCTType}
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCTypeGenerated class >> traitsGroup [

	"answer all traits in relation with this trait (including itself)"
	
	^ {self}, (self traitsGroupExcept: {self})
	
	
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCTypeGenerated class >> traitsGroupExcept: aSetOfTraits [
	
	| found targetClasses | 
	
	targetClasses := (self relationSlots collect: #targetClass) copyWithoutAll: aSetOfTraits.
	
	found := targetClasses asOrderedCollection.
	targetClasses do: [ :each | 
		found addAll: (each traitsGroupExcept: aSetOfTraits, targetClasses) ].
	
	^ found
	
	
	
	
]
