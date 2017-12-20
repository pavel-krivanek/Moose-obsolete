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

{ #category : #converting }
FamixMetamodelBuilderClass >> as: aTraitName [

	| trait |
	
	trait := self builder ensureTraitNamed: aTraitName.
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
	
	aClassName := (self builder prefix, self name) asSymbol.
	
	aSuperclass := self classGeneralization 
		ifNil: [ self defaultSuperclass ]
		ifNotNil: [ self classGeneralization realClass ].
	
	aClass := self builder environment createClassNamed: aClassName superclass: aSuperclass slots: self slotDefinitions in: self builder packageName.
			
	self realClass: aClass.
	self willGenerate ifTrue: [ 
		self generateAccessors.
		self generateAnnotationIn: aClass with: self builder  ].
	self generateTraitsAssignmentsFor: aClass.

]

{ #category : #generating }
FamixMetamodelBuilderClass >> generateDummy [

	| aClassName |
	
	self willGenerate ifFalse: [ ^ self ].
	
	aClassName := (self builder prefix, self name) asSymbol.
	
	self builder environment createDummyClassNamed: aClassName in: self builder packageName.

		
]

{ #category : #generating }
FamixMetamodelBuilderClass >> generateDummyWith: aBuilder [

	| aClassName |
	
	self willGenerate ifFalse: [ ^ self ].
	
	aClassName := (aBuilder prefix, self name) asSymbol.
	
	self builder environment createDummyClassNamed: aClassName in: aBuilder packageName.

		
]

{ #category : #generating }
FamixMetamodelBuilderClass >> generateTraitsAssignmentsFor: aClass [

	aClass classSide compile: ('statefulTraits

	<statefulTraits>
	^ \{{1}\}' format: { (self traitNamesFromRelations, self traitNamesFromGeneralizations) joinUsing: '. ' }) 
		classified: #meta

]

{ #category : #testing }
FamixMetamodelBuilderClass >> isMetamodelClass [

	^ true
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
FamixMetamodelBuilderClass >> traitGeneralizations: anObject [
	traitGeneralizations := anObject
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
