"
FamixMetamodelBuilderClass
"
Class {
	#name : #FamixMetamodelBuilderClass,
	#superclass : #FamixMetamodelBuilderBehavior,
	#instVars : [
		'traitGeneralizations',
		'classGeneralization'
	],
	#category : #'Famix-MetamodelBuilder-Core'
}

{ #category : #accessing }
FamixMetamodelBuilderClass >> addTraitGeneralization: aTrait [

	 self traitGeneralizations add: aTrait 
]

{ #category : #accessing }
FamixMetamodelBuilderClass >> allClassGeneralizations [

	| result c g|
	result := OrderedCollection new.
	c := self.
	[ g := c classGeneralization. g notNil ] whileTrue: [ 
		result add: g.
		c := g ].
	^ result

]

{ #category : #generating }
FamixMetamodelBuilderClass >> allTraitNames [ 

	^ (self traitNamesFromRelations, self traitNamesFromGeneralizations) asSet sorted
]

{ #category : #converting }
FamixMetamodelBuilderClass >> as: aTraitOrTrait [

	| trait |
	
	trait := aTraitOrTrait isString
		ifTrue: [ self builder ensureTraitNamed: aTraitOrTrait ]
		ifFalse: [ aTraitOrTrait ].
	self addTraitGeneralization: trait. 
	
	^ FamixMetamodelBuilderClassAlias new
		subject: self;
		trait: trait;
		yourself.
		
	
]

{ #category : #converting }
FamixMetamodelBuilderClass >> as: aTraitName property: propertyName [

	| aSide aTrait |
	
	aTrait := self builder ensureTraitNamed: aTraitName.
	
	aSide := FamixMetamodelBuilderRelationSide new
		builder: self builder;
		relatedClass: self;
		traitName: aTraitName;
		name: propertyName;
		yourself.

	aTrait sides add: aSide.
	^ aSide.		
]

{ #category : #converting }
FamixMetamodelBuilderClass >> asTrait [

	^ self builder ensureTraitNamed: self relatedTraitName
]

{ #category : #accessing }
FamixMetamodelBuilderClass >> classGeneralization [
	^ classGeneralization
]

{ #category : #accessing }
FamixMetamodelBuilderClass >> classGeneralization: anObject [
	classGeneralization := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderClass >> generalization: anObject [

	anObject isSymbol
		ifTrue: [ self addTraitGeneralization: (self builder ensureTraitNamed: anObject) ]
		ifFalse: [ 
			anObject isMetamodelTrait 
				ifTrue: [ self addTraitGeneralization: anObject ]
				ifFalse: [ self classGeneralization: anObject ] ]
]

{ #category : #generating }
FamixMetamodelBuilderClass >> generate [

	| aClass aSuperclass aClassName |
	
	self willGenerate ifFalse: [ ^ self ].
	
	aClassName := self fullName.
	
	aSuperclass := self classGeneralization 
		ifNil: [ self defaultSuperclass ]
		ifNotNil: [ self classGeneralization realClass ].
	
	aClass := self builder environment createClassNamed: aClassName superclass: aSuperclass slots: self slotDefinitions in: self builder packageName.
			
	self realClass: aClass.
	self willGenerate ifTrue: [ 
		self generateAccessors.
		self generateAnnotationIn: aClass ].
	self generateTraitsAssignmentsFor: aClass.

]

{ #category : #generating }
FamixMetamodelBuilderClass >> generateDummy [

	| aClassName |
	
	self willGenerate ifFalse: [ ^ self ].
	
	aClassName := self fullName.
	
	self builder environment createDummyClassNamed: aClassName in: self builder packageName.

		
]

{ #category : #generating }
FamixMetamodelBuilderClass >> generateTraitsAssignmentsFor: aClass [

	aClass classSide compile: ('statefulTraits

	<statefulTraits>
	^ \{{1}\}' format: { self allTraitNames joinUsing: '. ' }) 
		classified: #meta

]

{ #category : #testing }
FamixMetamodelBuilderClass >> isMetamodelClass [

	^ true
]

{ #category : #'name conversion' }
FamixMetamodelBuilderClass >> ownerPropertyName [

	^ self name uncapitalized, 'Owner'.
	
]

{ #category : #'name conversion' }
FamixMetamodelBuilderClass >> pluralPropertyName [

	| uncapitalized |
	
	uncapitalized := self name uncapitalized.
	
	^ (uncapitalized endsWith: 's')
		ifFalse: [ uncapitalized, 's' ]
		ifTrue: [ uncapitalized, 'es' ]
]

{ #category : #'name conversion' }
FamixMetamodelBuilderClass >> propertyName [
	
	^ self name uncapitalized.
	
	
]

{ #category : #'name conversion' }
FamixMetamodelBuilderClass >> relatedOwnerTraitName [

	^ 'TWith', self pluralPropertyName capitalized
]

{ #category : #'name conversion' }
FamixMetamodelBuilderClass >> relatedTraitName [

	^ 'T', self name
]

{ #category : #'name conversion' }
FamixMetamodelBuilderClass >> singularPropertyName [

	| uncapitalized |
	
	uncapitalized := self name uncapitalized.
	
	^ (uncapitalized endsWith: 'ses')
		ifTrue: [uncapitalized withoutSuffix: 'es']
		ifFalse: [ 
			(uncapitalized endsWith: 's')
				ifTrue: [uncapitalized withoutSuffix: 's']
				ifFalse: [ self error: 'Property name is not in plural' ] ].

]

{ #category : #generating }
FamixMetamodelBuilderClass >> subclass: aClass [
	
	aClass generalization: self
]

{ #category : #accessing }
FamixMetamodelBuilderClass >> traitGeneralizations [

	^ traitGeneralizations ifNil: [ traitGeneralizations := OrderedCollection new ]
]

{ #category : #accessing }
FamixMetamodelBuilderClass >> traitNamesFromGeneralizations [

	^ self traitGeneralizations collect: [ :each |
		self builder prefix, each name]
]

{ #category : #accessing }
FamixMetamodelBuilderClass >> traitNamesFromRelations [

	"returns traits defined by relations"

	^ (self relations collect: [ :each | self builder prefix, each side traitName ]) asSet sorted
]
