"
FamixMetamodelBuilderClass
"
Class {
	#name : #FamixMetamodelBuilderClass,
	#superclass : #FamixMetamodelBuilderBehavior,
	#instVars : [
		'traitGeneralizations',
		'classGeneralization',
		'requirements'
	],
	#category : #'Famix-MetamodelBuilder-Core'
}

{ #category : #visitor }
FamixMetamodelBuilderClass >> acceptVisitor: aVisitor [

	^ aVisitor visitClass: self.
]

{ #category : #accessing }
FamixMetamodelBuilderClass >> addTraitGeneralization: aTrait [

	(self traitGeneralizations includes: aTrait)
		ifFalse: [ self traitGeneralizations add: aTrait ]
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

{ #category : #accessing }
FamixMetamodelBuilderClass >> allRequirementNames [ 

	^ (self requirements asSet collect: #fullName) sorted
]

{ #category : #accessing }
FamixMetamodelBuilderClass >> allTraitNames [ 

	^ (self traitNamesFromRelations, self traitNamesFromGeneralizations) asSet sorted
]

{ #category : #converting }
FamixMetamodelBuilderClass >> as: aTraitOrTraitName [

	| trait |
	
	trait := aTraitOrTraitName isString
		ifTrue: [ self builder ensureLocalTraitNamed: aTraitOrTraitName ]
		ifFalse: [ aTraitOrTraitName ].
	self addTraitGeneralization: trait. 
	
	^ FamixMetamodelBuilderClassAlias new
		subject: self;
		trait: trait;
		yourself.
		
	
]

{ #category : #converting }
FamixMetamodelBuilderClass >> as: aTraitOrTraitName property: propertyName [

	| aSide aTrait aTraitName |
	
	self assert: propertyName isString.
	
	aTrait := aTraitOrTraitName isString
		ifTrue: [ 
			aTraitName := aTraitOrTraitName.
			self builder ensureLocalTraitNamed: aTraitOrTraitName ]
		ifFalse: [ 
			aTraitName := aTraitOrTraitName name.
			aTraitOrTraitName ].
	
	aSide := FamixMetamodelBuilderRelationSide new
		builder: self builder;
		relatedClass: self;
		traitName: aTraitName;
		name: propertyName;
		yourself.

	aTrait addRelationSide: aSide.
	self addTraitGeneralization: aTrait.
	^ aSide.		
]

{ #category : #converting }
FamixMetamodelBuilderClass >> asTrait [

	^ self builder ensureLocalTraitNamed: self relatedTraitName
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

	| aClass aSuperclass aClassName isHierarchyRoot  |
	
	self willGenerate ifFalse: [ ^ self ].
	
	aClassName := self fullName.
	
	isHierarchyRoot := false.
	
	aSuperclass := self classGeneralization 
		ifNil: [ 
			isHierarchyRoot := true.
			self defaultSuperclass ]
		ifNotNil: [ self classGeneralization realClass ].
	
	aClass := self builder environment createClassNamed: aClassName asSymbol superclass: aSuperclass traitNames: self allTraitNames slots: self slotDefinitions in: self packageName overwrite: true.
	
	aClass tagWith: self tag.
	self builder environment setComment: self comment for: aClass.
			
	self realClass: aClass.
	
	self willGenerate ifTrue: [ 
		self generateAccessors.
		self generateAnnotationIn: aClass as: self name superclass: nil].
	self generateRequirementsFor: aClass.
	
	isHierarchyRoot ifTrue: [ 
		self generateRootMethodsIn: aClass ].
	
	

]

{ #category : #generating }
FamixMetamodelBuilderClass >> generateDummy [

	| aClassName |
	
	self willGenerate ifFalse: [ ^ self ].
	
	aClassName := self fullName.
	
	(self builder environment hasBehaviorNamed: aClassName) ifFalse: [ 
		self builder environment createDummyClassNamed: aClassName in: self packageName ]

		
]

{ #category : #generating }
FamixMetamodelBuilderClass >> generateRequirementsFor: aClass [

	aClass classSide compile: ('requirements

	<generated>
	^ \{ {1} \}' format: { self allRequirementNames joinUsing: '. ' }) 
		classified: #meta
]

{ #category : #generating }
FamixMetamodelBuilderClass >> generateRootMethodsIn: aClass [

	self builder generator ifNotNil: [ 
		aClass classSide compile: ('metamodel

	<generated>
	^ (self class environment at: #{1}) metamodel' format: {self builder generator class name})
				classified: 'meta' ]
]

{ #category : #generating }
FamixMetamodelBuilderClass >> generateTestingSelectorsFor: aClass [

	aClass testingSelectors do: [ :aSelector |

		aClass instanceSide compile: ('{1}

	<generated>
	^ true' format: { aSelector }) 
		classified: #testing ].
	
	
]

{ #category : #generating }
FamixMetamodelBuilderClass >> generateTraitsAssignmentsFor: aClass [

	aClass propertyNamed: #statefulTraits put: self allTraitNames.

	aClass classSide compile: ('statefulTraits

	<statefulTraits>
	<generated>
	^ \{{1}\}' format: { self allTraitNames joinUsing: '. ' }) 
		classified: #meta

]

{ #category : #testing }
FamixMetamodelBuilderClass >> hasTraitGeneralization: aTrait [

	^ self traitGeneralizations includes: aTrait 
]

{ #category : #initialization }
FamixMetamodelBuilderClass >> initialize [

	super initialize.
	
	requirements := Set new.
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

{ #category : #accessing }
FamixMetamodelBuilderClass >> requirements [

	^ requirements 
]

{ #category : #accessing }
FamixMetamodelBuilderClass >> requires: collectionOfClasses [

	requirements addAll: collectionOfClasses
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
		each fullName]
]

{ #category : #accessing }
FamixMetamodelBuilderClass >> traitNamesFromRelations [

	"returns traits defined by relations"

	^ (self relations collect: [ :each | each side trait fullName ]) asSet sorted
]

{ #category : #testing }
FamixMetamodelBuilderClass >> usesOnlyTrait: aTrait [

 	^ (self traitGeneralizations size = 1) 
		and: [ self traitGeneralizations first = aTrait ]	
]
