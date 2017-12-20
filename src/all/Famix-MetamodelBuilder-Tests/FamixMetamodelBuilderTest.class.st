Class {
	#name : #FamixMetamodelBuilderTest,
	#superclass : #TestCase,
	#category : #'Famix-MetamodelBuilder-Tests'
}

{ #category : #tests }
FamixMetamodelBuilderTest >> testEmptyBuilder [

	| builder |
	
	builder := FamixMetamodelBuilder forTesting.
	
	self assert: builder testingEnvironment ask allClasses isEmpty.
	builder generate.
	self assert: builder testingEnvironment ask allClasses isEmpty.

]
