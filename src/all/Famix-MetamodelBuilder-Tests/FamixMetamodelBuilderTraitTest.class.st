Class {
	#name : #FamixMetamodelBuilderTraitTest,
	#superclass : #TestCase,
	#instVars : [
		'builder'
	],
	#category : #'Famix-MetamodelBuilder-Tests'
}

{ #category : #initialization }
FamixMetamodelBuilderTraitTest >> setUp [

	builder := FamixMetamodelBuilder forTesting.

]

{ #category : #initialization }
FamixMetamodelBuilderTraitTest >> testMultipleTraits [

	builder newTraitNamed: #TComment.	
	builder newTraitNamed: #TMethod.
	builder newTraitNamed: #TPackage.

	builder generate.
	builder testingEnvironment ask classNamed: 'TstTComment'.
	builder testingEnvironment ask classNamed: 'TstTMethod'.
	builder testingEnvironment ask classNamed: 'TstTPackage'.

]

{ #category : #initialization }
FamixMetamodelBuilderTraitTest >> testSimpleClassAnnotation [

	| simpleClass generated method |
		
	simpleClass := builder newTraitNamed: #TComment.	
	builder generate.
	generated := builder testingEnvironment ask classNamed: 'TstTComment'.
	method := generated classSide methodNamed: #annotation.
	self assert: (method sourceCode includesSubstring: '<MSEClass: #TComment super: #FmxTraitEntity>').
	self assert: (method sourceCode includesSubstring: '<package: #Tst>').

]

{ #category : #initialization }
FamixMetamodelBuilderTraitTest >> testSimpleTrait [

	| generated |
	
	builder newTraitNamed: #TComment.	
	builder generate.
	generated := builder testingEnvironment ask classNamed: 'TstTComment'.
	self assert: generated notNil.
	self assert: generated isClass.
	self assert: generated superclass name equals: 'FmxTraitEntity'.
	self assert: generated slots isEmpty.
	self assert: generated instanceSide localSelectors isEmpty.	
	self assertCollection: generated classSide localSelectors sorted equals: #(annotation).
]

{ #category : #initialization }
FamixMetamodelBuilderTraitTest >> testTraitGeneralization [

	| behavior tBehavior generatedBehavior generatedTBehavior method |
	
	behavior := builder newClassNamed: #Behavior.	
	tBehavior := builder newTraitNamed: #TBehavior.

	tBehavior <|-- behavior.
	
	builder generate.

	generatedBehavior := builder testingEnvironment ask classNamed: 'TstBehavior'.
	generatedTBehavior := builder testingEnvironment ask classNamed: 'TstTBehavior'.
	
	self deny: (generatedBehavior superclass = generatedTBehavior).
	method := generatedBehavior classSide methodNamed: #statefulTraits.
	self assert: (method sourceCode includesSubstring: '<statefulTraits>').
	self assert: (method sourceCode includesSubstring: '^ {TstTBehavior}').
	

]
