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

{ #category : #tests }
FamixMetamodelBuilderTraitTest >> testAutogereatedContainsMany [

	| access variable generatedTAccess generatedTVariable |
	
	access := builder newTraitNamed: #TAccess.	
	variable := builder newTraitNamed: #TVariable.	

	(variable <>-* access).

	builder generate.
		
	generatedTAccess := builder testingEnvironment ask classNamed: 'TstTAccessGenerated'.
	generatedTVariable := builder testingEnvironment ask classNamed: 'TstTVariableGenerated'.
	
	self assert: generatedTAccess slots first name equals: #accessOwner.
	self assert: generatedTAccess slots first expression equals: 'FMOne type: #TstTVariable opposite: #accesses'.
	self assert: generatedTVariable slots first name equals: #accesses.
	self assert: generatedTVariable slots first expression equals: 'FMMany type: #TstTAccess opposite: #accessOwner'.
	
	self assert: ((generatedTAccess methodNamed: #accessOwner) sourceCode includesSubstring: '<container>').
]

{ #category : #tests }
FamixMetamodelBuilderTraitTest >> testAutogereatedContainsOne [

	| access variable generatedTAccess generatedTVariable |
	
	access := builder newTraitNamed: #TAccess.	
	variable := builder newTraitNamed: #TVariable.	

	(variable <>- access).

	builder generate.
		
	generatedTAccess := builder testingEnvironment ask classNamed: 'TstTAccessGenerated'.
	generatedTVariable := builder testingEnvironment ask classNamed: 'TstTVariableGenerated'.
	
	self assert: generatedTAccess slots first name equals: #variable.
	self assert: generatedTAccess slots first expression equals: 'FMOne type: #TstTVariable opposite: #access'.
	self assert: generatedTVariable slots first name equals: #access.
	self assert: generatedTVariable slots first expression equals: 'FMOne type: #TstTAccess opposite: #variable'.
	
	self assert: ((generatedTAccess methodNamed: #variable) sourceCode includesSubstring: '<container>').
	self deny: ((generatedTVariable methodNamed: #access) sourceCode includesSubstring: '<container>').
]

{ #category : #tests }
FamixMetamodelBuilderTraitTest >> testAutogereatedManyBelongTo [

	| access variable generatedTAccess generatedTVariable |
	
	access := builder newTraitNamed: #TAccess.	
	variable := builder newTraitNamed: #TVariable.	

	(access *-<> variable).

	builder generate.
		
	generatedTAccess := builder testingEnvironment ask classNamed: 'TstTAccessGenerated'.
	generatedTVariable := builder testingEnvironment ask classNamed: 'TstTVariableGenerated'.
	
	self assert: generatedTAccess slots first name equals: #accessOwner.
	self assert: generatedTAccess slots first expression equals: 'FMOne type: #TstTVariable opposite: #accesses'.
	self assert: generatedTVariable slots first name equals: #accesses.
	self assert: generatedTVariable slots first expression equals: 'FMMany type: #TstTAccess opposite: #accessOwner'.
	
	self assert: ((generatedTAccess methodNamed: #accessOwner) sourceCode includesSubstring: '<container>').
]

{ #category : #tests }
FamixMetamodelBuilderTraitTest >> testAutogereatedManyToMany [

	| access variable generatedTAccess generatedTVariable |
	
	access := builder newTraitNamed: #TAccess.	
	variable := builder newTraitNamed: #TVariable.	

	(variable *-* access).

	builder generate.
		
	generatedTAccess := builder testingEnvironment ask classNamed: 'TstTAccessGenerated'.
	generatedTVariable := builder testingEnvironment ask classNamed: 'TstTVariableGenerated'.
	
	self assert: generatedTAccess slots first name equals: #variables.
	self assert: generatedTAccess slots first expression equals: 'FMMany type: #TstTVariable opposite: #accesses'.
	self assert: generatedTVariable slots first name equals: #accesses.
	self assert: generatedTVariable slots first expression equals: 'FMMany type: #TstTAccess opposite: #variables'.
	
	self deny: ((generatedTAccess methodNamed: #variables) sourceCode includesSubstring: '<container>').
	self deny: ((generatedTVariable methodNamed: #accesses) sourceCode includesSubstring: '<container>').
]

{ #category : #tests }
FamixMetamodelBuilderTraitTest >> testAutogereatedManyToOne [

	| access variable generatedTAccess generatedTVariable |
	
	access := builder newTraitNamed: #TAccess.	
	variable := builder newTraitNamed: #TVariable.	

	(access *- variable).

	builder generate.
		
	generatedTAccess := builder testingEnvironment ask classNamed: 'TstTAccessGenerated'.
	generatedTVariable := builder testingEnvironment ask classNamed: 'TstTVariableGenerated'.
	
	self assert: generatedTAccess slots first name equals: #accessOwner.
	self assert: generatedTAccess slots first expression equals: 'FMOne type: #TstTVariable opposite: #accesses'.
	self assert: generatedTVariable slots first name equals: #accesses.
	self assert: generatedTVariable slots first expression equals: 'FMMany type: #TstTAccess opposite: #accessOwner'.
	
	self deny: ((generatedTAccess methodNamed: #accessOwner) sourceCode includesSubstring: '<container>').
]

{ #category : #tests }
FamixMetamodelBuilderTraitTest >> testAutogereatedOneBelongsTo [

	| access variable generatedTAccess generatedTVariable |
	
	access := builder newTraitNamed: #TAccess.	
	variable := builder newTraitNamed: #TVariable.	

	(variable -<> access).

	builder generate.
		
	generatedTAccess := builder testingEnvironment ask classNamed: 'TstTAccessGenerated'.
	generatedTVariable := builder testingEnvironment ask classNamed: 'TstTVariableGenerated'.
	
	self assert: generatedTAccess slots first name equals: #variable.
	self assert: generatedTAccess slots first expression equals: 'FMOne type: #TstTVariable opposite: #access'.
	self assert: generatedTVariable slots first name equals: #access.
	self assert: generatedTVariable slots first expression equals: 'FMOne type: #TstTAccess opposite: #variable'.
	
	self deny: ((generatedTAccess methodNamed: #variable) sourceCode includesSubstring: '<container>').
	self assert: ((generatedTVariable methodNamed: #access) sourceCode includesSubstring: '<container>').
]

{ #category : #tests }
FamixMetamodelBuilderTraitTest >> testAutogereatedOneToMany [

	| access variable generatedTAccess generatedTVariable |
	
	access := builder newTraitNamed: #TAccess.	
	variable := builder newTraitNamed: #TVariable.	

	(variable -* access).

	builder generate.
		
	generatedTAccess := builder testingEnvironment ask classNamed: 'TstTAccessGenerated'.
	generatedTVariable := builder testingEnvironment ask classNamed: 'TstTVariableGenerated'.
	
	self assert: generatedTAccess slots first name equals: #accessOwner.
	self assert: generatedTAccess slots first expression equals: 'FMOne type: #TstTVariable opposite: #accesses'.
	self assert: generatedTVariable slots first name equals: #accesses.
	self assert: generatedTVariable slots first expression equals: 'FMMany type: #TstTAccess opposite: #accessOwner'.
	
	self deny: ((generatedTAccess methodNamed: #accessOwner) sourceCode includesSubstring: '<container>').
]

{ #category : #tests }
FamixMetamodelBuilderTraitTest >> testAutogereatedOneToOne [

	| access variable generatedTAccess generatedTVariable |
	
	access := builder newTraitNamed: #TAccess.	
	variable := builder newTraitNamed: #TVariable.	

	(variable - access).

	builder generate.
		
	generatedTAccess := builder testingEnvironment ask classNamed: 'TstTAccessGenerated'.
	generatedTVariable := builder testingEnvironment ask classNamed: 'TstTVariableGenerated'.
	
	self assert: generatedTAccess slots first name equals: #variable.
	self assert: generatedTAccess slots first expression equals: 'FMOne type: #TstTVariable opposite: #access'.
	self assert: generatedTVariable slots first name equals: #access.
	self assert: generatedTVariable slots first expression equals: 'FMOne type: #TstTAccess opposite: #variable'.
	
	self deny: ((generatedTAccess methodNamed: #variable) sourceCode includesSubstring: '<container>').
	self deny: ((generatedTVariable methodNamed: #access) sourceCode includesSubstring: '<container>').
]

{ #category : #tests }
FamixMetamodelBuilderTraitTest >> testCustomPackageForUserClasses [

	| simpleClass generated userClass |
	
	builder packageNameForUserClasses: 'Custom'.
	
	simpleClass := builder newTraitNamed: #TComment.	
	builder generate.
	generated := builder testingEnvironment ask classNamed: 'TstTCommentGenerated'.
	userClass := builder testingEnvironment ask classNamed: 'TstTComment'.

	self assert: (generated package name = #Tst).
	self assert: (userClass package name = #Custom).
	
]

{ #category : #tests }
FamixMetamodelBuilderTraitTest >> testCustomPackageForUserClassesChanged [

	| simpleClass generated userClass generatedAccess accessUserClass |
	
	builder packageNameForUserClasses: 'Custom'.
	
	simpleClass := builder newTraitNamed: #TComment.	

	builder packageNameForUserClasses: 'Custom2'.

	simpleClass := builder newTraitNamed: #TAccess.	

	builder generate.
	generated := builder testingEnvironment ask classNamed: 'TstTCommentGenerated'.
	userClass := builder testingEnvironment ask classNamed: 'TstTComment'.
	generatedAccess := builder testingEnvironment ask classNamed: 'TstTAccessGenerated'.
	accessUserClass := builder testingEnvironment ask classNamed: 'TstTAccess'.

	self assert: (generated package name = #Tst).
	self assert: (userClass package name = #Custom).
	self assert: (generatedAccess package name = #Tst).
	self assert: (accessUserClass package name = #Custom2).


	
]

{ #category : #tests }
FamixMetamodelBuilderTraitTest >> testDefaultPackageForUserClasses [

	| simpleClass generated userClass |
	
	simpleClass := builder newTraitNamed: #TComment.	
	builder generate.
	generated := builder testingEnvironment ask classNamed: 'TstTCommentGenerated'.
	userClass := builder testingEnvironment ask classNamed: 'TstTComment'.

	self assert: (generated package name = #Tst).
	self assert: (userClass package name = #Tst).
	
]

{ #category : #tests }
FamixMetamodelBuilderTraitTest >> testMultipleTraits [

	builder newTraitNamed: #TComment.	
	builder newTraitNamed: #TMethod.
	builder newTraitNamed: #TPackage.

	builder generate.
	builder testingEnvironment ask classNamed: 'TstTComment'.
	builder testingEnvironment ask classNamed: 'TstTMethod'.
	builder testingEnvironment ask classNamed: 'TstTPackage'.

]

{ #category : #tests }
FamixMetamodelBuilderTraitTest >> testSimpleClassAnnotation [

	| simpleClass generated method userTrait |
		
	simpleClass := builder newTraitNamed: #TComment.	
	builder generate.

	generated := builder testingEnvironment ask classNamed: 'TstTCommentGenerated'.
	userTrait := builder testingEnvironment ask classNamed: 'TstTComment'.

	method := generated classSide methodNamed: #annotation.
	self assert: (method sourceCode includesSubstring: '<MSEClass: #TCommentGenerated super: #FmxTraitEntity>').
	self assert: (method sourceCode includesSubstring: '<package: #Tst>').

	method := userTrait classSide methodNamed: #annotation.
	self assert: (method sourceCode includesSubstring: '<MSEClass: #TComment super: #TstTCommentGenerated>').
	self assert: (method sourceCode includesSubstring: '<package: #Tst>').

]

{ #category : #tests }
FamixMetamodelBuilderTraitTest >> testSimpleTrait [

	| generated |
	
	builder newTraitNamed: #TComment.	
	builder generate.
	generated := builder testingEnvironment ask classNamed: 'TstTCommentGenerated'.
	self assert: generated notNil.
	self assert: generated isClass.
	self assert: generated superclass name equals: 'FmxTraitEntity'.
	self assert: generated slots isEmpty.
	self assert: generated instanceSide localSelectors isEmpty.	
	self assertCollection: generated classSide localSelectors sorted equals: #(annotation).
]

{ #category : #tests }
FamixMetamodelBuilderTraitTest >> testTraitGeneralization [

	| behavior tBehavior generatedBehavior generatedTBehavior method |
	
	behavior := builder newClassNamed: #Behavior.	
	tBehavior := builder newTraitNamed: #TBehavior.

	tBehavior <|-- behavior.
	
	builder generate.

	generatedBehavior := builder testingEnvironment ask classNamed: 'TstBehaviorGenerated'.
	generatedTBehavior := builder testingEnvironment ask classNamed: 'TstTBehaviorGenerated'.
	
	self deny: (generatedBehavior superclass = generatedTBehavior).
	method := generatedBehavior classSide methodNamed: #statefulTraits.
	self assert: (method sourceCode includesSubstring: '<statefulTraits>').
	self assert: (method sourceCode includesSubstring: '^ {TstTBehavior}').
	

]

{ #category : #tests }
FamixMetamodelBuilderTraitTest >> testUses [

	| behavior tBehavior generatedBehavior generatedTBehavior method |
	
	behavior := builder newClassNamed: #Behavior.	
	tBehavior := builder newTraitNamed: #TBehavior.

	behavior uses: tBehavior.
	
	builder generate.

	generatedBehavior := builder testingEnvironment ask classNamed: 'TstBehaviorGenerated'.
	generatedTBehavior := builder testingEnvironment ask classNamed: 'TstTBehaviorGenerated'.
	
	self deny: (generatedBehavior superclass = generatedTBehavior).
	method := generatedBehavior classSide methodNamed: #statefulTraits.
	self assert: (method sourceCode includesSubstring: '<statefulTraits>').
	self assert: (method sourceCode includesSubstring: '^ {TstTBehavior}').
	

]
