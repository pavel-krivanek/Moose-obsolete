Class {
	#name : #FamixMetamodelBuilderImportingContextTest,
	#superclass : #TestCase,
	#instVars : [
		'builder',
		'access',
		'variable',
		'generatedAccess',
		'generatedVariable',
		'generatedMethod',
		'method',
		'generatedContext'
	],
	#category : #'Famix-MetamodelBuilder-Tests'
}

{ #category : #initialization }
FamixMetamodelBuilderImportingContextTest >> setUp [

	| localMethod |
	
	builder := FamixMetamodelBuilder forTesting.

	access := builder newClassNamed: #Access.	
	variable := builder newClassNamed: #Variable.	
	method := builder newClassNamed: #Method.	
		
	access requires: { method. variable }.
		
	builder generate.
		
	generatedAccess := builder testingEnvironment ask classNamed: #TstAccess.
	generatedVariable := builder testingEnvironment ask classNamed: #TstVariable.
	generatedMethod := builder testingEnvironment ask classNamed: #TstMethod.

	generatedContext := builder testingEnvironment ask classNamed: #TstImportingContext.

]

{ #category : #initialization }
FamixMetamodelBuilderImportingContextTest >> testGeneratedContextClass [

	self assert: generatedContext notNil.
]

{ #category : #initialization }
FamixMetamodelBuilderImportingContextTest >> testRequirements [

	| localMethod |
	
	localMethod := generatedVariable classSide methodNamed: #requirements.
	self assert: (localMethod sourceCode includesSubstring: '^ {  }').

	localMethod := generatedMethod classSide methodNamed: #requirements.
	self assert: (localMethod sourceCode includesSubstring: '^ {  }').

	localMethod := generatedAccess classSide methodNamed: #requirements.
	self assert: (localMethod sourceCode includesSubstring: '^ { TstMethod. TstVariable }').


]
