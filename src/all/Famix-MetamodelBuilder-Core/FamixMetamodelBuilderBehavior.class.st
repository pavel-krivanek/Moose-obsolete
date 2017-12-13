Class {
	#name : #FamixMetamodelBuilderBehavior,
	#superclass : #Object,
	#instVars : [
		'name',
		'relations',
		'builder',
		'realClass',
		'willGenerate'
	],
	#category : #'Famix-MetamodelBuilder-Core-Famix-MetamodelBuilder-Core'
}

{ #category : #'as yet unclassified' }
FamixMetamodelBuilderBehavior >> -<> anotherClass [

	^ anotherClass containsMany: self
]

{ #category : #'as yet unclassified' }
FamixMetamodelBuilderBehavior >> <>- anotherClass [

	^ self containsMany: anotherClass
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> addRelation: aRelation with: anotherClass [

	self relations add: aRelation.
	anotherClass relations add: aRelation oppositeRelation
	
	
]

{ #category : #converting }
FamixMetamodelBuilderBehavior >> as: aTraitName property: propertyName [

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
FamixMetamodelBuilderBehavior >> builder [
	^ builder
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> builder: anObject [
	builder := anObject
]

{ #category : #'as yet unclassified' }
FamixMetamodelBuilderBehavior >> containsMany: otherClass [

	| aRelation |
	
	aRelation := otherClass generatedManyRelation.
	aRelation side relatedClass: otherClass.
	aRelation oppositeSide relatedClass: self.	
	self addRelation: aRelation with: otherClass.
	^ aRelation
]

{ #category : #generating }
FamixMetamodelBuilderBehavior >> defaultSuperclass [
	
	^ MooseEntity
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> fullName [

	^ self builder prefix, self name
]

{ #category : #generating }
FamixMetamodelBuilderBehavior >> generateAnnotationIn: aRealClass [ 

	| aSuperclassName |
	
	aSuperclassName := self classGeneralization 
		ifNil: [ MooseEntity name ]
		ifNotNil: [ self classGeneralization realClass name ].

	aRealClass classSide compile: ('annotation

	<MSEClass: #{1} super: #{2}>
	<package: #{3}>
	^self' format: { self name. aSuperclassName. self builder packageName})
		classified: 'meta'

]

{ #category : #generating }
FamixMetamodelBuilderBehavior >> generateAnnotationIn: aClass with: aBuilder [

	| aSuperclassName |
	
	aSuperclassName := self classGeneralization 
		ifNil: [ MooseEntity name ]
		ifNotNil: [ self classGeneralization realClass name ].

	aClass classSide compile: ('annotation

	<MSEClass: #{1} super: #{2}>
	<package: #{3}>
	^self' format: { self name. aSuperclassName. aBuilder packageName})
		classified: 'meta'

]

{ #category : #generating }
FamixMetamodelBuilderBehavior >> generateTraitsAssignmentsFor: aClass [

	aClass classSide compile: ('statefulTraits

	<statefulTraits>
	^ \{{1}\}' format: { (self traitNames, self traitGeneralizationNames) joinUsing: '. ' }) 
		classified: #meta

]

{ #category : #'as yet unclassified' }
FamixMetamodelBuilderBehavior >> generatedManyRelation [

	^ builder newRelation generatedWithMany: self pluralRelationName.
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> initialize [

	super initialize.
	relations := OrderedCollection new.
	willGenerate := true.
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> name [
	^ name
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> name: anObject [
	name := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> pluralRelationName [
	
	| lowercase |
	
	lowercase := self name asLowercase.

	^ (lowercase endsWith: 's')
		ifFalse: [ lowercase, 's' ]
		ifTrue: [ lowercase, 'es' ]
]

{ #category : #generating }
FamixMetamodelBuilderBehavior >> printOn: aStream [

	aStream << self class name << '(' << self name asString << ')'
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> realClass [

	^ realClass ifNil: [ Smalltalk at: (self builder prefix, self name) asSymbol  ]
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> realClass: anObject [
	realClass := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> relations [
	^ relations
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> relations: anObject [
	relations := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> uses: aTrait [

	^ self generalization: aTrait
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> willGenerate [
	^ willGenerate
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> willGenerate: anObject [
	willGenerate := anObject
]
