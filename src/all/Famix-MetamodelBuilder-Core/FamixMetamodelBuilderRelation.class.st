Class {
	#name : #FamixMetamodelBuilderRelation,
	#superclass : #Object,
	#instVars : [
		'side',
		'oppositeSide',
		'builder'
	],
	#category : #'Famix-MetamodelBuilder-Core-Famix-MetamodelBuilder-Core'
}

{ #category : #'as yet unclassified' }
FamixMetamodelBuilderRelation >> -<> anotherClass [

	| aRelation |
	aRelation := anotherClass containsMany: self left relatedClass.
	aRelation right traitName: self left traitName.
	
	^ aRelation.
]

{ #category : #'as yet unclassified' }
FamixMetamodelBuilderRelation >> <>- anotherClass [

	^ self right relatedClass containsMany: anotherClass
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> between: aName and: anOppositeName [

	traitName := aName asSymbol.
	oppositeTraitName := anOppositeName asSymbol.

]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> builder [
	^ builder
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> builder: anObject [
	builder := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> from [

	^ side 
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> from: aBlock [

	side := (FamixMetamodelBuilderRelationSide new
		relation: self;
		builder: self builder;
		yourself).
	aBlock cull: side.
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> fromMany: aName toMany: anOppositeName [

	name := aName asSymbol.
	oppositeName := anOppositeName asSymbol.
	cardinality := #many.
	oppositeCardinality := #many.
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> fromMany: aName toOne: anOppositeName [

	name := aName asSymbol.
	oppositeName := anOppositeName asSymbol.
	cardinality := #many.
	oppositeCardinality := #one.
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> fromOne: aName toMany: anOppositeName [

	name := aName asSymbol.
	oppositeName := anOppositeName asSymbol.
	cardinality := #one.
	oppositeCardinality := #many.
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> fromOne: aName toOne: anOppositeName [

	name := aName asSymbol.
	oppositeName := anOppositeName asSymbol.
	cardinality := #one.
	oppositeCardinality := #one.
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> generatedMany: aRelationName [

	| singular |
	
	singular := (aRelationName endsWith: 'es')
		ifTrue: [aRelationName withoutSuffix: 'es']
		ifFalse: [ 
			(aRelationName endsWith: 's')
				ifTrue: [aRelationName withoutSuffix: 's']
				ifFalse: [ self error: 'Relation name is not in plural' ] ].
			
	^ self from: [ :aSide |
			aSide name: singular, 'Owner';
				traitName: 'T', singular capitalized;
				one ];
		to: [ :aSide |
			aSide name: aRelationName;
				traitName: 'TWith', aRelationName capitalized;
				many ];
		yourself
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> generatedWithMany: aRelationName [

	| singular |
	
	singular := (aRelationName endsWith: 'ses')
		ifTrue: [aRelationName withoutSuffix: 'es']
		ifFalse: [ 
			(aRelationName endsWith: 's')
				ifTrue: [aRelationName withoutSuffix: 's']
				ifFalse: [ self error: 'Relation name is not in plural' ] ].
			
	^ self from: [ :aSide |
			aSide name: aRelationName;
				traitName: 'TWith', aRelationName capitalized;
				many];
		to: [ :aSide |
			 aSide name: singular, 'Owner';
				traitName: 'T', singular capitalized;
				one ];
		yourself
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> initialize [

	cardinality := #one.
	oppositeCardinality := #one.
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> left [

	^ side 
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> name [
	^ name
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> name: anObject [
	name := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> oppositeCardinality [
	^ oppositeCardinality
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> oppositeCardinality: anObject [
	oppositeCardinality := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> oppositeName [
	^ oppositeName
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> oppositeName: anObject [
	oppositeName := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> oppositeRelation [

	^ self copy swapSides
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> oppositeSide [
	^ oppositeSide
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> oppositeSide: anObject [
	oppositeSide := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> oppositeTraitName [
	^ oppositeTraitName
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> oppositeTraitName: anObject [
	oppositeTraitName := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> relation [
	^ relation
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> relation: anObject [
	relation := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> right [

	^ oppositeSide 
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> side [

	^ side
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> side: anObject [
	side := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> sides [

	^ { side. oppositeSide }
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> swapSides [

	| temp |
	temp := oppositeSide.
	oppositeSide := side.
	side := temp
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> to [

	^ oppositeSide 
]

{ #category : #accessing }
FamixMetamodelBuilderRelation >> to: aBlock [

	oppositeSide := (FamixMetamodelBuilderRelationSide new
		relation: self;
		builder: self builder;
		yourself).
	aBlock cull: oppositeSide.
]
