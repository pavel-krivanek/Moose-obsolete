Class {
	#name : #FamixMetamodelBuilderRelationTest,
	#superclass : #TestCase,
	#instVars : [
		'builder'
	],
	#category : #'Famix-MetamodelBuilder-Tests'
}

{ #category : #initialization }
FamixMetamodelBuilderRelationTest >> setUp [

	builder := FamixMetamodelBuilder forTesting.

]
