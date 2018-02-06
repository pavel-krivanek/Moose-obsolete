Class {
	#name : #FmxCMacroGenerated,
	#superclass : #FmxCEntityGenerated,
	#category : #'FmxC-Entities'
}

{ #category : #meta }
FmxCMacroGenerated class >> annotation [

	<MSEClass: #Macro super: #FmxCEntityGenerated>
	<package: #FmxC>
	^self
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCMacroGenerated class >> potentialContainers [

	| relations | 
	
	relations := self relationSlots.
	
	"check if we have more than one relation slot. If yes, this metod needs to be overriden"
	
	(relations size ~= 1) ifTrue: [ ^ self subclassResponsibility ].
	
	^ (relations collect: #name)
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCMacroGenerated class >> potentialPrimaryContainer [

	^ self potentialContainers first.
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCMacroGenerated class >> potentialSecondaryContainers [

	^ {}
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCMacroGenerated class >> relationSlots [ 

	^ (self slots select: [:aSlot | aSlot isFMRelationSlot]).


]

{ #category : #meta }
FmxCMacroGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxCMacroGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxCTMacro}
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCMacroGenerated class >> traitsGroup [

	"answer all traits in relation with this trait (including itself)"
	
	^ {self}, (self traitsGroupExcept: {self})
	
	
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCMacroGenerated class >> traitsGroupExcept: aSetOfTraits [
	
	| found targetClasses | 
	
	targetClasses := (self relationSlots collect: #targetClass) copyWithoutAll: aSetOfTraits.
	
	found := targetClasses asOrderedCollection.
	targetClasses do: [ :each | 
		found addAll: (each traitsGroupExcept: aSetOfTraits, targetClasses) ].
	
	^ found
	
	
	
	
]
