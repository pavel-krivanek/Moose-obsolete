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

	generatedNamed := builder testingEnviornment ask classNamed: 'TstNamed'.
	generatedTNamed := builder testingEnviornment ask classNamed: 'TstTNamed'.
	
	self deny: (generatedNamed superclass = generatedTNamed).
	method := generatedNamed classSide methodNamed: #statefulTraits.
	self assert: (method sourceCode includesSubstring: '<statefulTraits>').
	self assert: (method sourceCode includesSubstring: '^ {TstTNamed}').
	

]

{ #category : #tests }
FamixMetamodelBuilderClassTest >> testClassGeneralization [

	| behavior class generatedBehavior generatedClass annotation |
	
	behavior := builder newClassNamed: #Behavior.	
	class := builder newClassNamed: #Class.

	behavior <|-- class.

	builder generate.

	generatedBehavior := builder testingEnviornment ask classNamed: 'TstBehavior'.
	generatedClass := builder testingEnviornment ask classNamed: 'TstClass'.
	
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

	generatedBehavior := builder testingEnviornment ask classNamed: 'TstBehavior'.
	generatedClass := builder testingEnviornment ask classNamed: 'TstClass'.
	
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

	generatedNamed := builder testingEnviornment ask classNamed: 'TstNamed'.
	generatedTNamed := builder testingEnviornment ask classNamed: 'TstTNamed'.
	generatedTSourced := builder testingEnviornment ask classNamed: 'TstTSourced'.
	
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
	builder testingEnviornment ask classNamed: 'TstComment'.
	builder testingEnviornment ask classNamed: 'TstMethod'.
	builder testingEnviornment ask classNamed: 'TstPackage'.

]

{ #category : #tests }
FamixMetamodelBuilderClassTest >> testSimpleClass [

	| simpleClass generated |
	
	simpleClass := builder newClassNamed: #Comment.	
	builder generate.
	generated := builder testingEnviornment ask classNamed: 'TstComment'.
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
	generated := builder testingEnviornment ask classNamed: 'TstComment'.
	method := generated classSide methodNamed: #annotation.
	self assert: (method sourceCode includesSubstring: '<MSEClass: #Comment super: #MooseEntity>').
	self assert: (method sourceCode includesSubstring: '<package: #Tst>').

]

{ #category : #tests }
FamixMetamodelBuilderClassTest >> testSimpleClassStatefulTraits [

	| simpleClass generated method |
	
	simpleClass := builder newClassNamed: #Comment.	
	builder generate.
	generated := builder testingEnviornment ask classNamed: 'TstComment'.
	method := generated classSide methodNamed: #statefulTraits.
	self assert: (method sourceCode includesSubstring: '<statefulTraits>').
	self assert: (method sourceCode includesSubstring: '^ {}').

]
