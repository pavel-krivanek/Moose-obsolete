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
FamixMetamodelBuilderTraitTest >> testAutogereatedContainsMany [

	| access variable generatedTAccess generatedTVariable |
	
	access := builder newTraitNamed: #TAccess.	
	variable := builder newTraitNamed: #TVariable.	

	(variable <>-* access).

	builder generate.
		
	generatedTAccess := builder testingEnvironment ask classNamed: 'TstTAccess'.
	generatedTVariable := builder testingEnvironment ask classNamed: 'TstTVariable'.
	
	self assert: generatedTAccess slots first name equals: #accessOwner.
	self assert: generatedTAccess slots first expression equals: 'FMOne type: #TstTVariable opposite: #accesses'.
	self assert: generatedTVariable slots first name equals: #accesses.
	self assert: generatedTVariable slots first expression equals: 'FMMany type: #TstTAccess opposite: #accessOwner'.
	
	self assert: ((generatedTAccess methodNamed: #accessOwner) sourceCode includesSubstring: '<container>').
]

{ #category : #initialization }
FamixMetamodelBuilderTraitTest >> testAutogereatedContainsOne [

	| access variable generatedTAccess generatedTVariable |
	
	access := builder newTraitNamed: #TAccess.	
	variable := builder newTraitNamed: #TVariable.	

	(variable <>- access).

	builder generate.
		
	generatedTAccess := builder testingEnvironment ask classNamed: 'TstTAccess'.
	generatedTVariable := builder testingEnvironment ask classNamed: 'TstTVariable'.
	
	self assert: generatedTAccess slots first name equals: #variable.
	self assert: generatedTAccess slots first expression equals: 'FMOne type: #TstTVariable opposite: #access'.
	self assert: generatedTVariable slots first name equals: #access.
	self assert: generatedTVariable slots first expression equals: 'FMOne type: #TstTAccess opposite: #variable'.
	
	self assert: ((generatedTAccess methodNamed: #variable) sourceCode includesSubstring: '<container>').
	self deny: ((generatedTVariable methodNamed: #access) sourceCode includesSubstring: '<container>').
]

{ #category : #initialization }
FamixMetamodelBuilderTraitTest >> testAutogereatedManyBelongTo [

	| access variable generatedTAccess generatedTVariable |
	
	access := builder newTraitNamed: #TAccess.	
	variable := builder newTraitNamed: #TVariable.	

	(access *-<> variable).

	builder generate.
		
	generatedTAccess := builder testingEnvironment ask classNamed: 'TstTAccess'.
	generatedTVariable := builder testingEnvironment ask classNamed: 'TstTVariable'.
	
	self assert: generatedTAccess slots first name equals: #accessOwner.
	self assert: generatedTAccess slots first expression equals: 'FMOne type: #TstTVariable opposite: #accesses'.
	self assert: generatedTVariable slots first name equals: #accesses.
	self assert: generatedTVariable slots first expression equals: 'FMMany type: #TstTAccess opposite: #accessOwner'.
	
	self assert: ((generatedTAccess methodNamed: #accessOwner) sourceCode includesSubstring: '<container>').
]

{ #category : #initialization }
FamixMetamodelBuilderTraitTest >> testAutogereatedManyToMany [

	| access variable generatedTAccess generatedTVariable |
	
	access := builder newTraitNamed: #TAccess.	
	variable := builder newTraitNamed: #TVariable.	

	(variable *-* access).

	builder generate.
		
	generatedTAccess := builder testingEnvironment ask classNamed: 'TstTAccess'.
	generatedTVariable := builder testingEnvironment ask classNamed: 'TstTVariable'.
	
	self assert: generatedTAccess slots first name equals: #variables.
	self assert: generatedTAccess slots first expression equals: 'FMMany type: #TstTVariable opposite: #accesses'.
	self assert: generatedTVariable slots first name equals: #accesses.
	self assert: generatedTVariable slots first expression equals: 'FMMany type: #TstTAccess opposite: #variables'.
	
	self deny: ((generatedTAccess methodNamed: #variables) sourceCode includesSubstring: '<container>').
	self deny: ((generatedTVariable methodNamed: #accesses) sourceCode includesSubstring: '<container>').
]

{ #category : #initialization }
FamixMetamodelBuilderTraitTest >> testAutogereatedManyToOne [

	| access variable generatedTAccess generatedTVariable |
	
	access := builder newTraitNamed: #TAccess.	
	variable := builder newTraitNamed: #TVariable.	

	(access *- variable).

	builder generate.
		
	generatedTAccess := builder testingEnvironment ask classNamed: 'TstTAccess'.
	generatedTVariable := builder testingEnvironment ask classNamed: 'TstTVariable'.
	
	self assert: generatedTAccess slots first name equals: #accessOwner.
	self assert: generatedTAccess slots first expression equals: 'FMOne type: #TstTVariable opposite: #accesses'.
	self assert: generatedTVariable slots first name equals: #accesses.
	self assert: generatedTVariable slots first expression equals: 'FMMany type: #TstTAccess opposite: #accessOwner'.
	
	self deny: ((generatedTAccess methodNamed: #accessOwner) sourceCode includesSubstring: '<container>').
]

{ #category : #initialization }
FamixMetamodelBuilderTraitTest >> testAutogereatedOneBelongsTo [

	| access variable generatedTAccess generatedTVariable |
	
	access := builder newTraitNamed: #TAccess.	
	variable := builder newTraitNamed: #TVariable.	

	(variable -<> access).

	builder generate.
		
	generatedTAccess := builder testingEnvironment ask classNamed: 'TstTAccess'.
	generatedTVariable := builder testingEnvironment ask classNamed: 'TstTVariable'.
	
	self assert: generatedTAccess slots first name equals: #variable.
	self assert: generatedTAccess slots first expression equals: 'FMOne type: #TstTVariable opposite: #access'.
	self assert: generatedTVariable slots first name equals: #access.
	self assert: generatedTVariable slots first expression equals: 'FMOne type: #TstTAccess opposite: #variable'.
	
	self deny: ((generatedTAccess methodNamed: #variable) sourceCode includesSubstring: '<container>').
	self assert: ((generatedTVariable methodNamed: #access) sourceCode includesSubstring: '<container>').
]

{ #category : #initialization }
FamixMetamodelBuilderTraitTest >> testAutogereatedOneToMany [

	| access variable generatedTAccess generatedTVariable |
	
	access := builder newTraitNamed: #TAccess.	
	variable := builder newTraitNamed: #TVariable.	

	(variable -* access).

	builder generate.
		
	generatedTAccess := builder testingEnvironment ask classNamed: 'TstTAccess'.
	generatedTVariable := builder testingEnvironment ask classNamed: 'TstTVariable'.
	
	self assert: generatedTAccess slots first name equals: #accessOwner.
	self assert: generatedTAccess slots first expression equals: 'FMOne type: #TstTVariable opposite: #accesses'.
	self assert: generatedTVariable slots first name equals: #accesses.
	self assert: generatedTVariable slots first expression equals: 'FMMany type: #TstTAccess opposite: #accessOwner'.
	
	self deny: ((generatedTAccess methodNamed: #accessOwner) sourceCode includesSubstring: '<container>').
]

{ #category : #initialization }
FamixMetamodelBuilderTraitTest >> testAutogereatedOneToOne [

	| access variable generatedTAccess generatedTVariable |
	
	access := builder newTraitNamed: #TAccess.	
	variable := builder newTraitNamed: #TVariable.	

	(variable - access).

	builder generate.
		
	generatedTAccess := builder testingEnvironment ask classNamed: 'TstTAccess'.
	generatedTVariable := builder testingEnvironment ask classNamed: 'TstTVariable'.
	
	self assert: generatedTAccess slots first name equals: #variable.
	self assert: generatedTAccess slots first expression equals: 'FMOne type: #TstTVariable opposite: #access'.
	self assert: generatedTVariable slots first name equals: #access.
	self assert: generatedTVariable slots first expression equals: 'FMOne type: #TstTAccess opposite: #variable'.
	
	self deny: ((generatedTAccess methodNamed: #variable) sourceCode includesSubstring: '<container>').
	self deny: ((generatedTVariable methodNamed: #access) sourceCode includesSubstring: '<container>').
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

{ #category : #initialization }
FamixMetamodelBuilderTraitTest >> testUses [

	| behavior tBehavior generatedBehavior generatedTBehavior method |
	
	behavior := builder newClassNamed: #Behavior.	
	tBehavior := builder newTraitNamed: #TBehavior.

	behavior uses: tBehavior.
	
	builder generate.

	generatedBehavior := builder testingEnvironment ask classNamed: 'TstBehavior'.
	generatedTBehavior := builder testingEnvironment ask classNamed: 'TstTBehavior'.
	
	self deny: (generatedBehavior superclass = generatedTBehavior).
	method := generatedBehavior classSide methodNamed: #statefulTraits.
	self assert: (method sourceCode includesSubstring: '<statefulTraits>').
	self assert: (method sourceCode includesSubstring: '^ {TstTBehavior}').
	

]
