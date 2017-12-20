Class {
	#name : #FamixMetamodelBuilderRelationTest,
	#superclass : #TestCase,
	#instVars : [
		'builder'
	],
	#category : #'Famix-MetamodelBuilder-Tests'
}

{ #category : #initialization }
FamixMetamodelBuilderRelationTest >> checkArrow: aBinarySelector from: cardinality1 to: cardinality2 containerFrom: containerFrom containerTo: containerTo [

	| tClass tComment generatedTClass generatedTComment hasContainer |
		
	tClass := builder newTraitNamed: #TClass. 
	tComment := builder newTraitNamed: #TComment. 

	(tClass property: #property1) perform: aBinarySelector with: (tComment property: #property2).
	
	builder generate.
	
	generatedTClass := builder testingEnvironment ask classNamed: 'TstTClass'.
	generatedTComment := builder testingEnvironment ask classNamed: 'TstTComment'.
	
	self assert: generatedTClass slots size equals: 1.
	self assert: generatedTClass slots first name equals: #property1.
	self assert: generatedTClass slots first expression equals: cardinality1, ' type: #TstTComment opposite: #property2'.
	self assertCollection: generatedTClass instanceSide selectors hasSameElements: #(property1 property1:).
	hasContainer := (generatedTClass methodNamed: #property1) sourceCode includesSubstring: '<container>'.
	containerFrom 
		ifTrue: [ self assert: hasContainer ]
		ifFalse: [ self deny: hasContainer ].

	self assert: generatedTComment slots size equals: 1.
	self assert: generatedTComment slots first name equals: #property2.
	self assert: generatedTComment slots first expression equals: cardinality2, ' type: #TstTClass opposite: #property1'.
	self assertCollection: generatedTComment instanceSide selectors hasSameElements: #(property2 property2:).
	hasContainer := (generatedTComment methodNamed: #property2) sourceCode includesSubstring: '<container>'.
	containerTo
		ifTrue: [ self assert: hasContainer ]
		ifFalse: [ self deny: hasContainer ].

]

{ #category : #initialization }
FamixMetamodelBuilderRelationTest >> resetBuilder [

	builder := FamixMetamodelBuilder forTesting.

]

{ #category : #initialization }
FamixMetamodelBuilderRelationTest >> setUp [

	self resetBuilder

]

{ #category : #initialization }
FamixMetamodelBuilderRelationTest >> testOneToOneTraitsRelation [

	| tClass tComment generatedTClass generatedTComment |
		
	tClass := builder newTraitNamed: #TClass. 
	tComment := builder newTraitNamed: #TComment. 

	(tClass property: #property1) - (tComment property: #property2).
	
	builder generate.
	
	generatedTClass := builder testingEnvironment ask classNamed: 'TstTClass'.
	generatedTComment := builder testingEnvironment ask classNamed: 'TstTComment'.
	
	self assert: generatedTClass slots size equals: 1.
	self assert: generatedTClass slots first name equals: #property1.
	self assert: generatedTClass slots first expression equals: 'FMOne type: #TstTComment opposite: #property2'.

	self assertCollection: generatedTClass instanceSide selectors hasSameElements: #(property1 property1:).

	self assert: generatedTComment slots size equals: 1.
	self assert: generatedTComment slots first name equals: #property2.
	self assert: generatedTComment slots first expression equals: 'FMOne type: #TstTClass opposite: #property1'.

	self assertCollection: generatedTComment instanceSide selectors hasSameElements: #(property2 property2:).

]

{ #category : #initialization }
FamixMetamodelBuilderRelationTest >> testTraitRelation [

	self checkArrow: #- from: 'FMOne' to: 'FMOne' containerFrom: false containerTo: false.
	self resetBuilder.
	self checkArrow: #*- from: 'FMOne' to: 'FMMany' containerFrom: false containerTo: false.
	self resetBuilder.
	self checkArrow: #-* from: 'FMMany' to: 'FMOne' containerFrom: false containerTo: false.
	self resetBuilder.
	self checkArrow: #*-* from: 'FMMany' to: 'FMMany' containerFrom: false containerTo: false.

	self resetBuilder.
	self checkArrow: #-<> from: 'FMOne' to: 'FMOne' containerFrom: true containerTo: false.
	self resetBuilder.
	self checkArrow: #<>- from: 'FMOne' to: 'FMOne' containerFrom: false containerTo: true.
	
		self resetBuilder.
	self checkArrow: #*-<> from: 'FMOne' to: 'FMMany' containerFrom: true containerTo: false.
	self resetBuilder.
	self checkArrow: #<>-* from: 'FMMany' to: 'FMOne' containerFrom: false containerTo: true.
	
]
