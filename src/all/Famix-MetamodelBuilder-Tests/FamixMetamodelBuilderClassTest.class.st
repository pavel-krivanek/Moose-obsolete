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
	
"	
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
		ifFalse: [ self deny: hasContainer ]."
	

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
