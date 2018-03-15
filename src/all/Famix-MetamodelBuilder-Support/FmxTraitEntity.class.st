Class {
	#name : #FmxTraitEntity,
	#superclass : #MooseEntity,
	#category : #'Famix-MetamodelBuilder-Support'
}

{ #category : #meta }
FmxTraitEntity class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TraitEntity super: #MooseEntity>
	<package: #FmxSt>
	^self
]

{ #category : #'Moose-Query' }
FmxTraitEntity class >> childrenTypes [

	<ignoreInTraitUsers>
	^ Set new
]

{ #category : #'Moose-Query' }
FmxTraitEntity class >> parentTypes [

	<ignoreInTraitUsers>
	^ Set new
]

{ #category : #containers }
FmxTraitEntity class >> potentialContainers [

	<ignoreInTraitUsers>

	| relations | 
	
	relations := self relationSlots.
	
	"check if we have more than one relation slot. If yes, this metod needs to be overriden"
	
	(relations size ~= 1) ifTrue: [ ^ self subclassResponsibility ].
	
	^ (relations collect: #name)
]

{ #category : #containers }
FmxTraitEntity class >> potentialPrimaryContainer [

	<ignoreInTraitUsers>

	^ self potentialContainers first.
]

{ #category : #containers }
FmxTraitEntity class >> potentialSecondaryContainers [

	<ignoreInTraitUsers>

	^ {}
]

{ #category : #slots }
FmxTraitEntity class >> relationSlots [ 

	<ignoreInTraitUsers>
	^ (self slots select: [:aSlot | aSlot isFMRelationSlot]).


]

{ #category : #'traits support' }
FmxTraitEntity class >> traitMethods [

	<ignoreInTraitUsers>
	^ self localMethods
]

{ #category : #'traits support' }
FmxTraitEntity class >> traitSlots [

	<ignoreInTraitUsers>
	^ self slots
]

{ #category : #accessing }
FmxTraitEntity class >> traitsGroup [

	<ignoreInTraitUsers>

	"answer all traits in relation with this trait (including itself)"
	
	^ {self}, (self traitsGroupExcept: {self})
	
	
]

{ #category : #accessing }
FmxTraitEntity class >> traitsGroupExcept: aSetOfTraits [
	
	<ignoreInTraitUsers>

	| found targetClasses | 
	
	targetClasses := (self relationSlots collect: #targetClass) copyWithoutAll: aSetOfTraits.
	
	found := targetClasses asOrderedCollection.
	targetClasses do: [ :each | 
		found addAll: (each traitsGroupExcept: aSetOfTraits, targetClasses) ].
	
	^ found
	
	
	
	
]

{ #category : #'traits support' }
FmxTraitEntity >> traitMethods [

	<ignoreInTraitUsers>
	^ self localMethods
]

{ #category : #'traits support' }
FmxTraitEntity >> traitSlots [

	<ignoreInTraitUsers>
	^ self slots
]
