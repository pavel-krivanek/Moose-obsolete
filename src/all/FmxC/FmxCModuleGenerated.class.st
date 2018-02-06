Class {
	#name : #FmxCModuleGenerated,
	#superclass : #MooseEntity,
	#instVars : [
		'#isStub',
		'#name',
		'#moduleFiles => FMMany type: #FmxNGTWithModule opposite: #module'
	],
	#category : #'FmxC-Entities'
}

{ #category : #meta }
FmxCModuleGenerated class >> annotation [

	<MSEClass: #Module super: #MooseEntity>
	<package: #FmxC>
	^self
]

{ #category : #meta }
FmxCModuleGenerated class >> metamodel [

	^ CMetamodelGenerator metamodel
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCModuleGenerated class >> potentialContainers [

	| relations | 
	
	relations := self relationSlots.
	
	"check if we have more than one relation slot. If yes, this metod needs to be overriden"
	
	(relations size ~= 1) ifTrue: [ ^ self subclassResponsibility ].
	
	^ (relations collect: #name)
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCModuleGenerated class >> potentialPrimaryContainer [

	^ self potentialContainers first.
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCModuleGenerated class >> potentialSecondaryContainers [

	^ {}
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCModuleGenerated class >> relationSlots [ 

	^ (self slots select: [:aSlot | aSlot isFMRelationSlot]).


]

{ #category : #meta }
FmxCModuleGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxCModuleGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTModule. FmxNGTNamed}
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCModuleGenerated class >> traitsGroup [

	"answer all traits in relation with this trait (including itself)"
	
	^ {self}, (self traitsGroupExcept: {self})
	
	
]

{ #category : #'_fromTrait_FmxTraitEntity' }
FmxCModuleGenerated class >> traitsGroupExcept: aSetOfTraits [
	
	| found targetClasses | 
	
	targetClasses := (self relationSlots collect: #targetClass) copyWithoutAll: aSetOfTraits.
	
	found := targetClasses asOrderedCollection.
	targetClasses do: [ :each | 
		found addAll: (each traitsGroupExcept: aSetOfTraits, targetClasses) ].
	
	^ found
	
	
	
	
]

{ #category : #'_fromTrait_FmxNGTNamedGenerated' }
FmxCModuleGenerated >> isStub [

	<MSEProperty: #isStub type: #Boolean>
	<MSEComment: 'Flag true if the entity attributes are incomplete, either because the entity is missing or not imported.'>
	^ isStub
]

{ #category : #'_fromTrait_FmxNGTNamedGenerated' }
FmxCModuleGenerated >> isStub: anObject [

	isStub := anObject

]

{ #category : #'_fromTrait_FmxNGTModuleGenerated' }
FmxCModuleGenerated >> moduleFiles [

	^ moduleFiles
]

{ #category : #'_fromTrait_FmxNGTModuleGenerated' }
FmxCModuleGenerated >> moduleFiles: anObject [

	moduleFiles value: anObject

]

{ #category : #'_fromTrait_FmxNGTNamedGenerated' }
FmxCModuleGenerated >> name [

	<MSEProperty: #name type: #String>
	<MSEComment: 'Basic name of the entity, not full reference.'>
	^ name
]

{ #category : #'_fromTrait_FmxNGTNamedGenerated' }
FmxCModuleGenerated >> name: anObject [

	name := anObject

]
