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
FamixMetamodelBuilderBehaviorTest >> testWithTesting [

	"test automatic generation of testing methods in the entities hierarchy"

	| simpleClass generated commentString |
	
	simpleClass := self newEntityNamed: #Comment.	
	commentString := 'Simple testing class'.
	simpleClass comment: commentString.
	builder generate.
	generated := builder testingEnvironment ask classNamed: 'TstComment'.
	self assert: generated comment content equals: commentString.
]
