Class {
	#name : #FamixMetamodelBuilderRelationsGenerationTest,
	#superclass : #FamixMetamodelBuilderTestCase,
	#instVars : [
		'access',
		'variable',
		'generatedAccess',
		'generatedVariable'
	],
	#category : #'Famix-MetamodelBuilder-Tests'
}

{ #category : #utility }
FamixMetamodelBuilderRelationsGenerationTest >> assertContainerInAccessMethod: selector [

	self assert: ((generatedAccess methodNamed: selector) sourceCode includesSubstring: '<container>').
	self assert: ((generatedAccess methodNamed: selector) sourceCode includesSubstring: '<generated>').
	

]

{ #category : #utility }
FamixMetamodelBuilderRelationsGenerationTest >> assertContainerInVariableMethod: selector [

	self assert: ((generatedVariable methodNamed: selector) sourceCode includesSubstring: '<container>').
	self assert: ((generatedVariable methodNamed: selector) sourceCode includesSubstring: '<generated>').
	

]

{ #category : #utility }
FamixMetamodelBuilderRelationsGenerationTest >> cardinalityInAccess: selector1 inVariable: selector2 [

	self assert: generatedAccess slots first name equals: selector1.
	self assert: generatedVariable slots first name equals: selector2.

]

{ #category : #utility }
FamixMetamodelBuilderRelationsGenerationTest >> checkSlotsCount [		

	self assert: generatedAccess slots size equals: 1.
	self assert: generatedVariable slots size equals: 1.

]

{ #category : #utility }
FamixMetamodelBuilderRelationsGenerationTest >> denyContainerInAccessMethod: selector [

	self deny: ((generatedAccess methodNamed: selector) sourceCode includesSubstring: '<container>').
	self assert: ((generatedAccess methodNamed: selector) sourceCode includesSubstring: '<generated>').
	

]

{ #category : #utility }
FamixMetamodelBuilderRelationsGenerationTest >> denyContainerInVarialbeMethod: selector [

	self deny: ((generatedVariable methodNamed: selector) sourceCode includesSubstring: '<container>').
	self assert: ((generatedVariable methodNamed: selector) sourceCode includesSubstring: '<generated>').
	

]

{ #category : #utility }
FamixMetamodelBuilderRelationsGenerationTest >> generate [

	builder generate.
		
	generatedAccess := builder testingEnvironment ask classNamed: 'TstAccess'.
	generatedVariable := builder testingEnvironment ask classNamed: 'TstVariable'.

	self checkSlotsCount.
	
]

{ #category : #running }
FamixMetamodelBuilderRelationsGenerationTest >> setUp [

	super setUp.

	access := builder newClassNamed: #Access.	
	variable := builder newClassNamed: #Variable.	

]

{ #category : #utility }
FamixMetamodelBuilderRelationsGenerationTest >> slotCardinalityinAccess: accessCardinality inVariable: variableCardinality [

	"slot expression example: FMMany type: #TstAccess opposite: #accessOwner"
	self assert: (generatedAccess slots first expression beginsWith: ('FM', accessCardinality capitalized)).
	self assert: (generatedVariable slots first expression beginsWith: ('FM', variableCardinality capitalized)).

]

{ #category : #utility }
FamixMetamodelBuilderRelationsGenerationTest >> slotNameinAccess: selector1 inVariable: selector2 [

	self assert: generatedAccess slots first name equals: selector1.
	self assert: generatedVariable slots first name equals: selector2.

]

{ #category : #tests }
FamixMetamodelBuilderRelationsGenerationTest >> testContainsMany [

	variable <>-* access.

	self 
		variable: #accesses cardinality: #many container: false
		access: #accessOwner cardinality: #one container: true 

]

{ #category : #tests }
FamixMetamodelBuilderRelationsGenerationTest >> testContainsOne [

	variable <>- access.

	self 
		variable: #access cardinality: #one container: false
		access: #variable cardinality: #one container: true 

]

{ #category : #tests }
FamixMetamodelBuilderRelationsGenerationTest >> testManyBelongTo [

	variable *-<> access.

	self 
		variable: #variableOwner cardinality: #one container: true
		access: #variables cardinality: #many container: false 

]

{ #category : #tests }
FamixMetamodelBuilderRelationsGenerationTest >> testManyToMany [

	variable *-* access.

	self 
		variable: #accesses cardinality: #many container: false
		access: #variables cardinality: #many container: false 

]

{ #category : #tests }
FamixMetamodelBuilderRelationsGenerationTest >> testManyToOne [

	variable *- access.

	self 
		variable: #variableOwner cardinality: #one container: false
		access: #variables cardinality: #many container: false 

]

{ #category : #tests }
FamixMetamodelBuilderRelationsGenerationTest >> testOneBelongsTo [

	variable -<> access.
	
	self 
		variable: #access cardinality: #one container: true
		access: #variable cardinality: #one container: false 

]

{ #category : #tests }
FamixMetamodelBuilderRelationsGenerationTest >> testOneToMany [

	variable -* access.
	
	self 
		variable: #accesses cardinality: #many container: false
		access: #accessOwner cardinality: #one container: false 

]

{ #category : #tests }
FamixMetamodelBuilderRelationsGenerationTest >> testOneToOne [

	variable - access.
	
	self 
		variable: #access cardinality: #one container: false
		access: #variable cardinality: #one container: false 

]

{ #category : #tests }
FamixMetamodelBuilderRelationsGenerationTest >> variable: selector2 cardinality: cardinality2 container: container2 access: selector1 cardinality: cardinality1 container: container1 [ 

	self generate.

	self slotNameinAccess: selector1 inVariable: selector2.
	self slotCardinalityinAccess: cardinality1 inVariable: cardinality2.	
	container1
		ifTrue: [ self assertContainerInAccessMethod: selector1 ]
		ifFalse: [ self denyContainerInAccessMethod: selector1 ].
	container2
		ifTrue: [ self assertContainerInVariableMethod: selector2 ]
		ifFalse: [ self denyContainerInVarialbeMethod: selector2 ].

]
