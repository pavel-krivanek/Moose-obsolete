Class {
	#name : #FamixMetamodelBuilderClassTest,
	#superclass : #TestCase,
	#instVars : [
		'builder'
	],
	#category : #'Famix-MetamodelBuilder-Tests'
}

{ #category : #initialization }
FamixMetamodelBuilderClassTest >> setUp [

	builder := FamixMetamodelBuilder forTesting.

]

{ #category : #tests }
FamixMetamodelBuilderClassTest >> testAllClassGeneralizations [

	| named behavior class |
		
	named := builder newClassNamed: #Named.	
	behavior := builder newClassNamed: #Behavior.	
	class := builder newClassNamed: #Class.

	named <|-- behavior.
	behavior <|-- class.

	self assert: named allClassGeneralizations isEmpty.
	self assertCollection: behavior allClassGeneralizations hasSameElements: { named }.
	self assertCollection: class allClassGeneralizations hasSameElements: { named. behavior }.
		

]

{ #category : #tests }
FamixMetamodelBuilderClassTest >> testAllClassGeneralizationsInChain [

	| named behavior class |
		
	named := builder newClassNamed: #Named.	
	behavior := builder newClassNamed: #Behavior.	
	class := builder newClassNamed: #Class.

	named <|-- behavior <|-- class.

	self assert: named allClassGeneralizations isEmpty.
	self assertCollection: behavior allClassGeneralizations hasSameElements: { named }.
	self assertCollection: class allClassGeneralizations hasSameElements: { named. behavior }.
		

]

{ #category : #tests }
FamixMetamodelBuilderClassTest >> testAs [

	| named generatedNamed generatedTNamed method |
		
	named := builder newClassNamed: #Named.
	named as: #TNamed.	

	builder generate.

	generatedNamed := builder testingEnvironment ask classNamed: 'TstNamed'.
	generatedTNamed := builder testingEnvironment ask classNamed: 'TstTNamed'.
	
	self deny: (generatedNamed superclass = generatedTNamed).
	method := generatedNamed classSide methodNamed: #statefulTraits.
	self assert: (method sourceCode includesSubstring: '<statefulTraits>').
	self assert: (method sourceCode includesSubstring: '^ {TstTNamed}').
	

]

{ #category : #tests }
FamixMetamodelBuilderClassTest >> testAutogereatedContainsMany [

	| access variable generatedAccess generatedVariable generatedTAccess generatedTWithAccesses |
	
	access := builder newClassNamed: #Access.	
	variable := builder newClassNamed: #Variable.	

	(variable <>-* access).

	builder generate.
		
	generatedAccess := builder testingEnvironment ask classNamed: 'TstAccess'.
	generatedVariable := builder testingEnvironment ask classNamed: 'TstVariable'.
	generatedTAccess := builder testingEnvironment ask classNamed: 'TstTAccess'.
	generatedTWithAccesses := builder testingEnvironment ask classNamed: 'TstTWithAccesses'.
	
	self assert: generatedAccess slots isEmpty.
	self assert: generatedVariable slots isEmpty.
	self assert: generatedTAccess slots first name equals: #accessOwner.
	self assert: generatedTAccess slots first expression equals: 'FMOne type: #TstTWithAccesses opposite: #accesses'.
	self assert: generatedTWithAccesses slots first name equals: #accesses.
	self assert: generatedTWithAccesses slots first expression equals: 'FMMany type: #TstTAccess opposite: #accessOwner'.
	
	self assert: ((generatedTAccess methodNamed: #accessOwner) sourceCode includesSubstring: '<container>').
]

{ #category : #tests }
FamixMetamodelBuilderClassTest >> testAutogereatedContainsOne [

	| access variable generatedAccess generatedVariable generatedTAccess generatedTVariable |
	
	access := builder newClassNamed: #Access.	
	variable := builder newClassNamed: #Variable.	

	(variable <>- access).

	builder generate.
		
	generatedAccess := builder testingEnvironment ask classNamed: 'TstAccess'.
	generatedVariable := builder testingEnvironment ask classNamed: 'TstVariable'.
	generatedTAccess := builder testingEnvironment ask classNamed: 'TstTAccess'.
	generatedTVariable := builder testingEnvironment ask classNamed: 'TstTVariable'.
	
	self assert: generatedAccess slots isEmpty.
	self assert: generatedVariable slots isEmpty.
	self assert: generatedTAccess slots first name equals: #variable.
	self assert: generatedTAccess slots first expression equals: 'FMOne type: #TstTVariable opposite: #access'.
	self assert: generatedTVariable slots first name equals: #access.
	self assert: generatedTVariable slots first expression equals: 'FMOne type: #TstTAccess opposite: #variable'.
	
	self deny: ((generatedTVariable methodNamed: #access) sourceCode includesSubstring: '<container>').
	self assert: ((generatedTAccess methodNamed: #variable) sourceCode includesSubstring: '<container>').

]

{ #category : #tests }
FamixMetamodelBuilderClassTest >> testAutogereatedManyBelongTo [

	| access variable generatedAccess generatedVariable generatedTWithVariables generatedTVariable |
	
	access := builder newClassNamed: #Access.	
	variable := builder newClassNamed: #Variable.	

	(variable *-<> access).

	builder generate.
		
	generatedAccess := builder testingEnvironment ask classNamed: 'TstAccess'.
	generatedVariable := builder testingEnvironment ask classNamed: 'TstVariable'.
	generatedTWithVariables := builder testingEnvironment ask classNamed: 'TstTWithVariables'.
	generatedTVariable := builder testingEnvironment ask classNamed: 'TstTVariable'.
	
	self assert: generatedAccess slots isEmpty.
	self assert: generatedVariable slots isEmpty.
	self assert: generatedTWithVariables slots first name equals: #variables.
	self assert: generatedTWithVariables slots first expression equals: 'FMMany type: #TstTVariable opposite: #variableOwner'.
	self assert: generatedTVariable slots first name equals: #variableOwner.
	self assert: generatedTVariable slots first expression equals: 'FMOne type: #TstTWithVariables opposite: #variables'.
	
	self deny: ((generatedTWithVariables methodNamed: #variables) sourceCode includesSubstring: '<container>').
	self assert: ((generatedTVariable methodNamed: #variableOwner) sourceCode includesSubstring: '<container>').
]

{ #category : #tests }
FamixMetamodelBuilderClassTest >> testAutogereatedManyToMany [

	| access variable generatedAccess generatedVariable generatedTWithVariables generatedTWithAccesses |
	
	access := builder newClassNamed: #Access.	
	variable := builder newClassNamed: #Variable.	

	(variable *-* access).

	builder generate.
		
	generatedAccess := builder testingEnvironment ask classNamed: 'TstAccess'.
	generatedVariable := builder testingEnvironment ask classNamed: 'TstVariable'.
	generatedTWithVariables := builder testingEnvironment ask classNamed: 'TstTWithVariables'.
	generatedTWithAccesses := builder testingEnvironment ask classNamed: 'TstTWithAccesses'.
	
	self assert: generatedAccess slots isEmpty.
	self assert: generatedVariable slots isEmpty.
	self assert: generatedTWithVariables slots first name equals: #variables.
	self assert: generatedTWithVariables slots first expression equals: 'FMMany type: #TstTWithAccesses opposite: #accesses'.
	self assert: generatedTWithAccesses slots first name equals: #accesses.
	self assert: generatedTWithAccesses slots first expression equals: 'FMMany type: #TstTWithVariables opposite: #variables'.
	
	self deny: ((generatedTWithVariables methodNamed: #variables) sourceCode includesSubstring: '<container>').
	self deny: ((generatedTWithAccesses methodNamed: #accesses) sourceCode includesSubstring: '<container>').
]

{ #category : #tests }
FamixMetamodelBuilderClassTest >> testAutogereatedManyToOne [

	| access variable generatedAccess generatedVariable generatedTWithVariables generatedTVariable |
	
	access := builder newClassNamed: #Access.	
	variable := builder newClassNamed: #Variable.	

	(variable *- access).

	builder generate.
		
	generatedAccess := builder testingEnvironment ask classNamed: 'TstAccess'.
	generatedVariable := builder testingEnvironment ask classNamed: 'TstVariable'.
	generatedTWithVariables := builder testingEnvironment ask classNamed: 'TstTWithVariables'.
	generatedTVariable := builder testingEnvironment ask classNamed: 'TstTVariable'.
	
	self assert: generatedAccess slots isEmpty.
	self assert: generatedVariable slots isEmpty.
	self assert: generatedTWithVariables slots first name equals: #variables.
	self assert: generatedTWithVariables slots first expression equals: 'FMMany type: #TstTVariable opposite: #variableOwner'.
	self assert: generatedTVariable slots first name equals: #variableOwner.
	self assert: generatedTVariable slots first expression equals: 'FMOne type: #TstTWithVariables opposite: #variables'.
	
	self deny: ((generatedTWithVariables methodNamed: #variables) sourceCode includesSubstring: '<container>').
	self deny: ((generatedTVariable methodNamed: #variableOwner) sourceCode includesSubstring: '<container>').
]

{ #category : #tests }
FamixMetamodelBuilderClassTest >> testAutogereatedOneBelongsTo [

	| access variable generatedAccess generatedVariable generatedTAccess generatedTVariable |
	
	access := builder newClassNamed: #Access.	
	variable := builder newClassNamed: #Variable.	

	(variable -<> access).

	builder generate.
		
	generatedAccess := builder testingEnvironment ask classNamed: 'TstAccess'.
	generatedVariable := builder testingEnvironment ask classNamed: 'TstVariable'.
	generatedTAccess := builder testingEnvironment ask classNamed: 'TstTAccess'.
	generatedTVariable := builder testingEnvironment ask classNamed: 'TstTVariable'.
	
	self assert: generatedAccess slots isEmpty.
	self assert: generatedVariable slots isEmpty.
	self assert: generatedTAccess slots first name equals: #variable.
	self assert: generatedTAccess slots first expression equals: 'FMOne type: #TstTVariable opposite: #access'.
	self assert: generatedTVariable slots first name equals: #access.
	self assert: generatedTVariable slots first expression equals: 'FMOne type: #TstTAccess opposite: #variable'.
	
	self deny: ((generatedTAccess methodNamed: #variable) sourceCode includesSubstring: '<container>').
	self assert: ((generatedTVariable methodNamed: #access) sourceCode includesSubstring: '<container>').
]

{ #category : #tests }
FamixMetamodelBuilderClassTest >> testAutogereatedOneToMany [

	| access variable generatedAccess generatedVariable generatedTAccess generatedTWithAccesses |
	
	access := builder newClassNamed: #Access.	
	variable := builder newClassNamed: #Variable.	

	(variable -* access).

	builder generate.
		
	generatedAccess := builder testingEnvironment ask classNamed: 'TstAccess'.
	generatedVariable := builder testingEnvironment ask classNamed: 'TstVariable'.
	generatedTAccess := builder testingEnvironment ask classNamed: 'TstTAccess'.
	generatedTWithAccesses := builder testingEnvironment ask classNamed: 'TstTWithAccesses'.
	
	self assert: generatedAccess slots isEmpty.
	self assert: generatedVariable slots isEmpty.
	self assert: generatedTAccess slots first name equals: #accessOwner.
	self assert: generatedTAccess slots first expression equals: 'FMOne type: #TstTWithAccesses opposite: #accesses'.
	self assert: generatedTWithAccesses slots first name equals: #accesses.
	self assert: generatedTWithAccesses slots first expression equals: 'FMMany type: #TstTAccess opposite: #accessOwner'.
	
	self deny: ((generatedTAccess methodNamed: #accessOwner) sourceCode includesSubstring: '<container>').
]

{ #category : #tests }
FamixMetamodelBuilderClassTest >> testAutogereatedOneToOne [

	| access variable generatedAccess generatedVariable generatedTAccess generatedTVariable |
	
	access := builder newClassNamed: #Access.	
	variable := builder newClassNamed: #Variable.	

	(variable - access).

	builder generate.
		
	generatedAccess := builder testingEnvironment ask classNamed: 'TstAccess'.
	generatedVariable := builder testingEnvironment ask classNamed: 'TstVariable'.
	generatedTAccess := builder testingEnvironment ask classNamed: 'TstTAccess'.
	generatedTVariable := builder testingEnvironment ask classNamed: 'TstTVariable'.
	
	self assert: generatedAccess slots isEmpty.
	self assert: generatedVariable slots isEmpty.
	self assert: generatedTAccess slots first name equals: #variable.
	self assert: generatedTAccess slots first expression equals: 'FMOne type: #TstTVariable opposite: #access'.
	self assert: generatedTVariable slots first name equals: #access.
	self assert: generatedTVariable slots first expression equals: 'FMOne type: #TstTAccess opposite: #variable'.
	
	self deny: ((generatedTAccess methodNamed: #variable) sourceCode includesSubstring: '<container>').
	self deny: ((generatedTVariable methodNamed: #access) sourceCode includesSubstring: '<container>').
]

{ #category : #'tests - settings' }
FamixMetamodelBuilderClassTest >> testBasicSuperclass [

	| simpleClass generated |
	
	simpleClass := builder newClassNamed: #Comment.	
	builder generate.
	generated := builder testingEnvironment ask classNamed: 'TstComment'.
	self assert: generated superclass name equals: builder defaultBasicSuperclassName.

]

{ #category : #'tests - settings' }
FamixMetamodelBuilderClassTest >> testBasicTrait [

	| simpleTrait generated |
	
	simpleTrait := builder newTraitNamed: #TComment.	
	builder generate.
	generated := builder testingEnvironment ask classNamed: 'TstTComment'.
	self assert: generated superclass name equals: builder defaultBasicTraitName.

]

{ #category : #tests }
FamixMetamodelBuilderClassTest >> testBuilderPackageChange [

	| simpleClass generated |
	
	simpleClass := builder newClassNamed: #Comment.	
	builder newClassNamed: #Comment.	
	builder packageName: 'Another'.
	builder newClassNamed: #Method.	
	builder generate.
	generated := builder testingEnvironment ask classNamed: 'TstComment'.
	self assert: generated notNil.
	self assert: generated isClass.
	self assert: (generated package name = #Tst).
	generated := builder testingEnvironment ask classNamed: 'TstMethod'.
	self assert: generated notNil.
	self assert: generated isClass.
	self assert: (generated package name = #Another).

]

{ #category : #tests }
FamixMetamodelBuilderClassTest >> testBuilderPrefixChange [

	| simpleClass generated |
	
	simpleClass := builder newClassNamed: #Comment.	
	builder newClassNamed: #Comment.	
	builder prefix: 'Another'.
	builder newClassNamed: #Method.	
	builder generate.
	generated := builder testingEnvironment ask classNamed: 'TstComment'.
	self assert: generated notNil.
	self assert: generated isClass.
	self assert: (generated package name = #Tst).
	generated := builder testingEnvironment ask classNamed: 'AnotherMethod'.
	self assert: generated notNil.
	self assert: generated isClass.
	self assert: (generated package name = #Tst).

]

{ #category : #tests }
FamixMetamodelBuilderClassTest >> testClassGeneralization [

	| behavior class generatedBehavior generatedClass annotation |
	
	behavior := builder newClassNamed: #Behavior.	
	class := builder newClassNamed: #Class.

	behavior <|-- class.

	builder generate.

	generatedBehavior := builder testingEnvironment ask classNamed: 'TstBehavior'.
	generatedClass := builder testingEnvironment ask classNamed: 'TstClass'.
	
	self assert: generatedClass superclass equals: generatedBehavior.
	annotation := generatedClass classSide methodNamed: #annotation.
	self assert: (annotation sourceCode includesSubstring: '<MSEClass: #Class super: #TstBehavior>').
	

]

{ #category : #tests }
FamixMetamodelBuilderClassTest >> testClassOppositeGeneralization [

	| behavior class generatedBehavior generatedClass annotation |
	
	behavior := builder newClassNamed: #Behavior.	
	class := builder newClassNamed: #Class.

	class --|> behavior.

	builder generate.

	generatedBehavior := builder testingEnvironment ask classNamed: 'TstBehavior'.
	generatedClass := builder testingEnvironment ask classNamed: 'TstClass'.
	
	self assert: generatedClass superclass equals: generatedBehavior.
	annotation := generatedClass classSide methodNamed: #annotation.
	self assert: (annotation sourceCode includesSubstring: '<MSEClass: #Class super: #TstBehavior>').
	

]

{ #category : #tests }
FamixMetamodelBuilderClassTest >> testComment [

	| simpleClass generated commentString |
	
	
	simpleClass := builder newClassNamed: #Comment.	
	commentString := 'Simple testing class'.
	simpleClass comment: commentString.
	builder generate.
	generated := builder testingEnvironment ask classNamed: 'TstComment'.
	self assert: generated comment content equals: commentString.
]

{ #category : #tests }
FamixMetamodelBuilderClassTest >> testCommentNotSpecified [
]

{ #category : #tests }
FamixMetamodelBuilderClassTest >> testCommentOnTrait [

	| simpleTrait generated commentString |
	
	
	simpleTrait := builder newTraitNamed: #TComment.	
	commentString := 'Simple testing class'.
	simpleTrait comment: commentString.
	builder generate.
	generated := builder testingEnvironment ask classNamed: 'TstTComment'.
	self assert: generated comment content equals: commentString.
]

{ #category : #'tests - settings' }
FamixMetamodelBuilderClassTest >> testCustomBasicTrait [

	| simpleTrait generated |

	builder basicTraitName: #CustomBasicTrait.	
	simpleTrait := builder newTraitNamed: #TComment.	
	builder generate.
	generated := builder testingEnvironment ask classNamed: 'TstTComment'.
	self assert: generated superclass name equals: #CustomBasicTrait.	

]

{ #category : #'tests - settings' }
FamixMetamodelBuilderClassTest >> testCustomSuperclass [

	| simpleClass generated |
	
	builder basicSuperclassName: #BasicSuperclass.
	simpleClass := builder newClassNamed: #Comment.
	builder generate.
	generated := builder testingEnvironment ask classNamed: 'TstComment'.
	self assert: generated superclass name equals: 'BasicSuperclass'.

]

{ #category : #'tests - tags' }
FamixMetamodelBuilderClassTest >> testDefaultTagForClass [

	| tAccess generatedTAccess |

	tAccess := builder newTraitNamed: #TAccess.	

	builder generate.
		
	generatedTAccess := builder testingEnvironment ask classNamed: #TstTAccess.
	self assertCollection: generatedTAccess tags hasSameElements: { builder defaultTraitTag }
]

{ #category : #tests }
FamixMetamodelBuilderClassTest >> testEmptyComment [

	| simpleClass generated |
	
	simpleClass := builder newClassNamed: #Comment.	
	builder generate.
	generated := builder testingEnvironment ask classNamed: 'TstComment'.
	self assert: generated comment content isEmptyOrNil.
]

{ #category : #tests }
FamixMetamodelBuilderClassTest >> testMultipleAs [

	| named tNamed tSourced generatedNamed generatedTNamed generatedTSourced method |
		
	named := builder newClassNamed: #Named.
	tNamed := named as: #TNamed.	
	tSourced := named as: #TSourced.	

	builder generate.

	generatedNamed := builder testingEnvironment ask classNamed: 'TstNamed'.
	generatedTNamed := builder testingEnvironment ask classNamed: 'TstTNamed'.
	generatedTSourced := builder testingEnvironment ask classNamed: 'TstTSourced'.
	
	self deny: (generatedNamed superclass = generatedTNamed).
	self deny: (generatedNamed superclass = generatedTSourced).
	method := generatedNamed classSide methodNamed: #statefulTraits.
	self assert: (method sourceCode includesSubstring: '<statefulTraits>').
	self assert: (method sourceCode includesSubstring: '^ {TstTNamed. TstTSourced}').
	

]

{ #category : #tests }
FamixMetamodelBuilderClassTest >> testMultipleClasses [

	builder newClassNamed: #Comment.	
	builder newClassNamed: #Method.
	builder newClassNamed: #Package.

	builder generate.
	builder testingEnvironment ask classNamed: 'TstComment'.
	builder testingEnvironment ask classNamed: 'TstMethod'.
	builder testingEnvironment ask classNamed: 'TstPackage'.

]

{ #category : #tests }
FamixMetamodelBuilderClassTest >> testOwnerPropertyName [

	| class |
		
	class := builder newClassNamed: #Variable.	
	self assert: class ownerPropertyName equals: 'variableOwner'.
		
	class := builder newClassNamed: #Access.	
	self assert: class ownerPropertyName equals: 'accessOwner'.

	class := builder newClassNamed: #Method.	
	self assert: class ownerPropertyName equals: 'methodOwner'.

]

{ #category : #tests }
FamixMetamodelBuilderClassTest >> testPluralRelationName [

	| class |
		
	class := builder newClassNamed: #Variable.	
	self assert: class pluralRelationName equals: 'variables'.
		
	class := builder newClassNamed: #Access.	
	self assert: class pluralRelationName equals: 'accesses'.

	class := builder newClassNamed: #Method.	
	self assert: class pluralRelationName equals: 'methods'.

]

{ #category : #tests }
FamixMetamodelBuilderClassTest >> testRelatedOwnerTraitName [

	| class |
		
	class := builder newClassNamed: #Variable.	
	self assert: class relatedOwnerTraitName equals: 'TWithVariables'.
		
	class := builder newClassNamed: #Access.	
	self assert: class relatedOwnerTraitName equals: 'TWithAccesses'.

	class := builder newClassNamed: #Method.	
	self assert: class relatedOwnerTraitName equals: 'TWithMethods'.

]

{ #category : #tests }
FamixMetamodelBuilderClassTest >> testRelatedTraitName [

	| class |
		
	class := builder newClassNamed: #Variable.	
	self assert: class relatedTraitName equals: 'TVariable'.
		
	class := builder newClassNamed: #Access.	
	self assert: class relatedTraitName equals: 'TAccess'.

	class := builder newClassNamed: #Method.	
	self assert: class relatedTraitName equals: 'TMethod'.

]

{ #category : #tests }
FamixMetamodelBuilderClassTest >> testSimpleClass [

	| simpleClass generated |
	
	simpleClass := builder newClassNamed: #Comment.	
	builder generate.
	generated := builder testingEnvironment ask classNamed: 'TstComment'.
	self assert: generated notNil.
	self assert: generated isClass.
	self assert: generated superclass name equals: 'MooseEntity'.
	self assert: generated slots isEmpty.
	self assert: generated instanceSide localSelectors isEmpty.	
	self assertCollection: generated classSide localSelectors sorted equals: #(annotation statefulTraits).
]

{ #category : #tests }
FamixMetamodelBuilderClassTest >> testSimpleClassAnnotation [

	| simpleClass generated method |
		
	simpleClass := builder newClassNamed: #Comment.	
	builder generate.
	generated := builder testingEnvironment ask classNamed: 'TstComment'.
	method := generated classSide methodNamed: #annotation.
	self assert: (method sourceCode includesSubstring: '<MSEClass: #Comment super: #MooseEntity>').
	self assert: (method sourceCode includesSubstring: '<package: #Tst>').

]

{ #category : #tests }
FamixMetamodelBuilderClassTest >> testSimpleClassStatefulTraits [

	| simpleClass generated method |
	
	simpleClass := builder newClassNamed: #Comment.	
	builder generate.
	generated := builder testingEnvironment ask classNamed: 'TstComment'.
	method := generated classSide methodNamed: #statefulTraits.
	self assert: (method sourceCode includesSubstring: '<statefulTraits>').
	self assert: (method sourceCode includesSubstring: '^ {}').

]

{ #category : #tests }
FamixMetamodelBuilderClassTest >> testSingularPropertyName [

	| class |
		
	class := builder newClassNamed: #Variables.	
	self assert: class singularPropertyName equals: 'variable'.
		
	class := builder newClassNamed: #Accesses.	
	self assert: class singularPropertyName equals: 'access'.

	class := builder newClassNamed: #Methods.	
	self assert: class singularPropertyName equals: 'method'.

]

{ #category : #'tests - tags' }
FamixMetamodelBuilderClassTest >> testTagForClass [

	| access generatedAccess |

	access := builder newClassNamed: #Access.	
	access tag: #classes.

	builder generate.
		
	generatedAccess := builder testingEnvironment ask classNamed: #TstAccess.
	self assertCollection: generatedAccess tags hasSameElements: { #classes }
]

{ #category : #'tests - tags' }
FamixMetamodelBuilderClassTest >> testTagForClassFromBuilder [

	| access generatedAccess comment generatedComment |

	access := builder newClassNamed: #Access.	
	comment := builder newClassNamed: #Comment.	

	builder classTag: #classes.
	comment tag: #support.

	builder generate.
		
	generatedAccess := builder testingEnvironment ask classNamed: #TstAccess.
	generatedComment := builder testingEnvironment ask classNamed: #TstComment.
	self assertCollection: generatedAccess tags hasSameElements: { #classes }.
	self assertCollection: generatedComment tags hasSameElements: { #support }.
]

{ #category : #'tests - tags' }
FamixMetamodelBuilderClassTest >> testTagForTraitFromBuilder [

	| tAccess generatedTAccess tComment generatedTComment |

	tAccess := builder newTraitNamed: #TAccess.	
	tComment := builder newTraitNamed: #TComment.	

	builder traitTag: #classes.
	tComment tag: #support.

	builder generate.
		
	generatedTAccess := builder testingEnvironment ask classNamed: #TstTAccess.
	generatedTComment := builder testingEnvironment ask classNamed: #TstTComment.
	self assertCollection: generatedTAccess tags hasSameElements: { #classes }.
	self assertCollection: generatedTComment tags hasSameElements: { #support }.
]

{ #category : #'tests - tags' }
FamixMetamodelBuilderClassTest >> testTagForTraits [

	| tAccess generatedTAccess |

	tAccess := builder newTraitNamed: #TAccess.	
	tAccess tag: #support.

	builder generate.
		
	generatedTAccess := builder testingEnvironment ask classNamed: #TstTAccess.
	self assertCollection: generatedTAccess tags hasSameElements: { #support }
]
