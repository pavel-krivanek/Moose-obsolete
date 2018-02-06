Class {
	#name : #FmxCEntityGenerated,
	#superclass : #MooseEntity,
	#instVars : [
		'#definedIn => FMOne type: #FmxCTFile opposite: #definedEntities',
		'#isStub',
		'#name'
	],
	#category : #'FmxC-Entities'
}

{ #category : #meta }
FmxCEntityGenerated class >> annotation [

	<MSEClass: #Entity super: #MooseEntity>
	<package: #FmxC>
	^self
]

{ #category : #meta }
FmxCEntityGenerated class >> metamodel [

	^ CMetamodelGenerator metamodel
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCEntityGenerated class >> potentialContainers [

	| relations | 
	
	relations := self relationSlots.
	
	"check if we have more than one relation slot. If yes, this metod needs to be overriden"
	
	(relations size ~= 1) ifTrue: [ ^ self subclassResponsibility ].
	
	^ (relations collect: #name)
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCEntityGenerated class >> potentialPrimaryContainer [

	^ self potentialContainers first.
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCEntityGenerated class >> potentialSecondaryContainers [

	^ {}
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCEntityGenerated class >> relationSlots [ 

	^ (self slots select: [:aSlot | aSlot isFMRelationSlot]).


]

{ #category : #meta }
FmxCEntityGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxCEntityGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxCTEntity. FmxNGTNamed}
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCEntityGenerated class >> traitsGroup [

	"answer all traits in relation with this trait (including itself)"
	
	^ {self}, (self traitsGroupExcept: {self})
	
	
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCEntityGenerated class >> traitsGroupExcept: aSetOfTraits [
	
	| found targetClasses | 
	
	targetClasses := (self relationSlots collect: #targetClass) copyWithoutAll: aSetOfTraits.
	
	found := targetClasses asOrderedCollection.
	targetClasses do: [ :each | 
		found addAll: (each traitsGroupExcept: aSetOfTraits, targetClasses) ].
	
	^ found
	
	
	
	
]

{ #category : #'_fromTrait_FmxCTEntityGenerated' }
FmxCEntityGenerated >> definedIn [

	^ definedIn
]

{ #category : #'_fromTrait_FmxCTEntityGenerated' }
FmxCEntityGenerated >> definedIn: anObject [

	definedIn := anObject

]

{ #category : #'_fromTrait_FmxNGTNamedGenerated' }
FmxCEntityGenerated >> isStub [

	<MSEProperty: #isStub type: #Boolean>
	<MSEComment: 'Flag true if the entity attributes are incomplete, either because the entity is missing or not imported.'>
	^ isStub
]

{ #category : #'_fromTrait_FmxNGTNamedGenerated' }
FmxCEntityGenerated >> isStub: anObject [

	isStub := anObject

]

{ #category : #'_fromTrait_FmxNGTNamedGenerated' }
FmxCEntityGenerated >> name [

	<MSEProperty: #name type: #String>
	<MSEComment: 'Basic name of the entity, not full reference.'>
	^ name
]

{ #category : #'_fromTrait_FmxNGTNamedGenerated' }
FmxCEntityGenerated >> name: anObject [

	name := anObject

]
