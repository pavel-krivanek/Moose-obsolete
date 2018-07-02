Class {
	#name : #FamixMetamodelBuilderBehaviorTest,
	#superclass : #FamixMetamodelBuilderTestCase,
	#category : #'Famix-MetamodelBuilder-Tests'
}

{ #category : #testing }
FamixMetamodelBuilderBehaviorTest class >> isAbstract [

	^ self name = #FamixMetamodelBuilderBehaviorTest
]

{ #category : #accessing }
FamixMetamodelBuilderBehaviorTest >> behaviorClass [

	self subclassResponsibility 
]

{ #category : #accessing }
FamixMetamodelBuilderBehaviorTest >> newEntityNamed: aString [

	self subclassResponsibility 
]

{ #category : #tests }
FamixMetamodelBuilderBehaviorTest >> testComment [

	"test assigning of a comment to a class"

	| simpleClass generated commentString |
	
	simpleClass := self newEntityNamed: #Comment.	
	commentString := 'Simple testing class'.
	simpleClass comment: commentString.
	builder generate.
	generated := builder testingEnvironment ask classNamed: 'TstComment'.
	self assert: generated comment content equals: commentString.
]

{ #category : #tests }
FamixMetamodelBuilderBehaviorTest >> testCustomTestingSelectors [

	"test automatic generation of custom testing selector"

	| simpleClass |
	
	simpleClass := self newEntityNamed: #Comment.	
	simpleClass testingSelector: #isAComment.
	self assertCollection: simpleClass testingSelectors hasSameElements: #(isAComment).
	simpleClass testingSelector: #isADocumentation.
	self assertCollection: simpleClass testingSelectors hasSameElements: #(isAComment isADocumentation).
	

]

{ #category : #tests }
FamixMetamodelBuilderBehaviorTest >> testCustomTestingSelectorsAtOnce [

	"test automatic generation of custom testing selector defined at once"

	| simpleClass |
	
	simpleClass := self newEntityNamed: #Comment.	
	simpleClass testingSelectors: #(isAComment isADocumentation).
	self assertCollection: simpleClass testingSelectors hasSameElements: #(isAComment isADocumentation).
	

]

{ #category : #tests }
FamixMetamodelBuilderBehaviorTest >> testTestingSelectors [

	"test automatic generation of testing methods in the entities hierarchy"

	| simpleClass |
	
	simpleClass := self newEntityNamed: #Comment.	
	self assert: simpleClass testingSelectors isEmpty.
	simpleClass withTesting.
	self assertCollection: simpleClass testingSelectors hasSameElements: #(isComment).
	

]
