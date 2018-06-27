Class {
	#name : #FamixMetamodelBuilderClassGeneralizationsTest,
	#superclass : #TestCase,
	#instVars : [
		'builder',
		'named',
		'behavior',
		'class'
	],
	#category : #'Famix-MetamodelBuilder-Tests'
}

{ #category : #running }
FamixMetamodelBuilderClassGeneralizationsTest >> checkGeneralizationWithAnnotations [

	"check if TstClass is correctly created as a subclass of TstBehavior"

	| generatedBehavior generatedClass annotation |
	
	builder generate.
	
	generatedBehavior := builder testingEnvironment ask classNamed: 'TstBehavior'.
	generatedClass := builder testingEnvironment ask classNamed: 'TstClass'.
	
	self assert: generatedClass superclass equals: generatedBehavior.
	annotation := generatedClass classSide methodNamed: #annotation.
	self assert: (annotation sourceCode includesSubstring: '<MSEClass: #Class super: #TstBehavior>').
	self assert: (annotation sourceCode includesSubstring: '<generated>').
	

]

{ #category : #running }
FamixMetamodelBuilderClassGeneralizationsTest >> checkHierarchy [

	self assert: named allClassGeneralizations isEmpty.
	self assertCollection: behavior allClassGeneralizations hasSameElements: { named }.
	self assertCollection: class allClassGeneralizations hasSameElements: { named. behavior }.

]

{ #category : #running }
FamixMetamodelBuilderClassGeneralizationsTest >> setUp [

	super setUp.
	builder := FamixMetamodelBuilder forTesting.

	named := builder newClassNamed: #Named.	
	behavior := builder newClassNamed: #Behavior.	
	class := builder newClassNamed: #Class.

]

{ #category : #running }
FamixMetamodelBuilderClassGeneralizationsTest >> testAllClassGeneralizations [
	
	named <|-- behavior.
	behavior <|-- class.
	
	self checkHierarchy.
]

{ #category : #running }
FamixMetamodelBuilderClassGeneralizationsTest >> testAllClassGeneralizationsInChain [
	
	named <|-- behavior <|-- class.
	
	self checkHierarchy.
]

{ #category : #running }
FamixMetamodelBuilderClassGeneralizationsTest >> testAllClassGeneralizationsInChainInverted [
	
	class --|> behavior --|> named.
	
	self checkHierarchy.
]

{ #category : #running }
FamixMetamodelBuilderClassGeneralizationsTest >> testClassOppositeGeneralization [

	behavior <|-- class.

	self checkGeneralizationWithAnnotations
]

{ #category : #running }
FamixMetamodelBuilderClassGeneralizationsTest >> testGeneralization [

	class --|> behavior.

	self checkGeneralizationWithAnnotations
]

{ #category : #running }
FamixMetamodelBuilderClassGeneralizationsTest >> testSubclassOf [
	
	behavior subclassOf: named. 
	class subclassOf: behavior.
	
	self checkHierarchy.
]
