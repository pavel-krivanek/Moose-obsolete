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
FamixMetamodelBuilderImportingContextTest >> testDefineImport [

	| localMethod |
	
	self skip.
	
	localMethod := generatedContext methodNamed: #importMethod.
	self assert: (localMethod sourceCode includesSubstring: '<generated>').
	self assert: (localMethod sourceCode includesSubstring: '^ self import: TstMethod').

]

{ #category : #initialization }
FamixMetamodelBuilderImportingContextTest >> testGeneratedContextClass [

	self skip.
	self assert: generatedContext notNil.
	self assert: generatedContext superclass name = #FamixImportingContext.
]

{ #category : #initialization }
FamixMetamodelBuilderImportingContextTest >> testRequirements [

	| localMethod |
	
	self skip.
	localMethod := generatedVariable classSide methodNamed: #requirements.
	self assert: (localMethod sourceCode includesSubstring: '<generated>').
	self assert: (localMethod sourceCode includesSubstring: '^ {  }').

	localMethod := generatedMethod classSide methodNamed: #requirements.
	self assert: (localMethod sourceCode includesSubstring: '<generated>').
	self assert: (localMethod sourceCode includesSubstring: '^ {  }').

	localMethod := generatedAccess classSide methodNamed: #requirements.
	self assert: (localMethod sourceCode includesSubstring: '<generated>').
	self assert: (localMethod sourceCode includesSubstring: '^ { TstMethod. TstVariable }').


]

{ #category : #initialization }
FamixMetamodelBuilderImportingContextTest >> testShouldImport [

	| localMethod |
	
	self skip.
	localMethod := generatedContext methodNamed: #shouldImportMethod.
	self assert: (localMethod sourceCode includesSubstring: '<generated>').
	self assert: (localMethod sourceCode includesSubstring: '^ self shouldImport: TstMethod').
	
	localMethod := generatedContext methodNamed: #shouldImportAccess.
	self assert: (localMethod sourceCode includesSubstring: '<generated>').
	self assert: (localMethod sourceCode includesSubstring: '^ self shouldImport: TstAccess').
	
	localMethod := generatedContext methodNamed: #shouldImportVariable.
	self assert: (localMethod sourceCode includesSubstring: '<generated>').
	self assert: (localMethod sourceCode includesSubstring: '^ self shouldImport: TstVariable').

]
