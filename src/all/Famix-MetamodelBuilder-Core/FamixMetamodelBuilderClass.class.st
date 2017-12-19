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
	
	^ FamixMetamodelBuilderClassAlias new
		subject: self;
		trait: trait;
		yourself.
		
	
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
		ifTrue: [ self traitGeneralizations add: (self builder ensureTraitNamed: anObject) ]
		ifFalse: [ 
			anObject isMetamodelTrait 
				ifTrue: [ self traitGeneralizations add: anObject ]
				ifFalse: [ self classGeneralization: anObject ] ]
]

{ #category : #generating }
FamixMetamodelBuilderClass >> generateDummyWith: aBuilder [

	| aClassName |
	
	self willGenerate ifFalse: [ ^ self ].
	
	aClassName := (aBuilder prefix, self name) asSymbol.
	
	self builder environment createDummyClassNamed: aClassName in: aBuilder packageName.

		
]

{ #category : #generating }
FamixMetamodelBuilderClass >> generateWith: aBuilder [

	| aClass aSuperclass aClassName |
	
	self willGenerate ifFalse: [ ^ self ].
	
	aClassName := (aBuilder prefix, self name) asSymbol.
	
	aSuperclass := self classGeneralization 
		ifNil: [ self defaultSuperclass ]
		ifNotNil: [ self classGeneralization realClass ].
	
	aClass := self builder environment createClassNamed: aClassName superclass: aSuperclass in: aBuilder packageName.
			
	self realClass: aClass.
	self willGenerate ifTrue: [ self generateAnnotationIn: aClass with: aBuilder ].
	self generateTraitsAssignmentsFor: aClass.

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
FamixMetamodelBuilderClass >> traitGeneralizationNames [

	^ self traitGeneralizations collect: [ :each |
		self builder prefix, each name]
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
FamixMetamodelBuilderClass >> traitNames [

	"returns traits defined by relations"

	^ (self relations collect: [ :each | self builder prefix, each side traitName ]) asSet sorted
]
