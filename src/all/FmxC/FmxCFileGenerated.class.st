Class {
	#name : #FmxCFileGenerated,
	#superclass : #MooseEntity,
	#instVars : [
		'#definedEntities => FMMany type: #FmxCTEntity opposite: #definedIn',
		'#isStub',
		'#name'
	],
	#category : #'FmxC-Entities'
}

{ #category : #meta }
FmxCFileGenerated class >> annotation [

	<MSEClass: #File super: #MooseEntity>
	<package: #FmxC>
	^self
]

{ #category : #meta }
FmxCFileGenerated class >> metamodel [

	^ CMetamodelGenerator metamodel
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCFileGenerated class >> potentialContainers [

	| relations | 
	
	relations := self relationSlots.
	
	"check if we have more than one relation slot. If yes, this metod needs to be overriden"
	
	(relations size ~= 1) ifTrue: [ ^ self subclassResponsibility ].
	
	^ (relations collect: #name)
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCFileGenerated class >> potentialPrimaryContainer [

	^ self potentialContainers first.
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCFileGenerated class >> potentialSecondaryContainers [

	^ {}
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCFileGenerated class >> relationSlots [ 

	^ (self slots select: [:aSlot | aSlot isFMRelationSlot]).


]

{ #category : #meta }
FmxCFileGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxCFileGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxCTFile. FmxNGTNamed}
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCFileGenerated class >> traitsGroup [

	"answer all traits in relation with this trait (including itself)"
	
	^ {self}, (self traitsGroupExcept: {self})
	
	
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCFileGenerated class >> traitsGroupExcept: aSetOfTraits [
	
	| found targetClasses | 
	
	targetClasses := (self relationSlots collect: #targetClass) copyWithoutAll: aSetOfTraits.
	
	found := targetClasses asOrderedCollection.
	targetClasses do: [ :each | 
		found addAll: (each traitsGroupExcept: aSetOfTraits, targetClasses) ].
	
	^ found
	
	
	
	
]

{ #category : #'_fromTrait_FmxCTFileGenerated' }
FmxCFileGenerated >> definedEntities [

	^ definedEntities
]

{ #category : #'_fromTrait_FmxCTFileGenerated' }
FmxCFileGenerated >> definedEntities: anObject [

	definedEntities value: anObject

]

{ #category : #'_fromTrait_FmxNGTNamedGenerated' }
FmxCFileGenerated >> isStub [

	<MSEProperty: #isStub type: #Boolean>
	<MSEComment: 'Flag true if the entity attributes are incomplete, either because the entity is missing or not imported.'>
	^ isStub
]

{ #category : #'_fromTrait_FmxNGTNamedGenerated' }
FmxCFileGenerated >> isStub: anObject [

	isStub := anObject

]

{ #category : #'_fromTrait_FmxNGTNamedGenerated' }
FmxCFileGenerated >> name [

	<MSEProperty: #name type: #String>
	<MSEComment: 'Basic name of the entity, not full reference.'>
	^ name
]

{ #category : #'_fromTrait_FmxNGTNamedGenerated' }
FmxCFileGenerated >> name: anObject [

	name := anObject

]
