Class {
	#name : #FamixMetamodelBuilderTestCase,
	#superclass : #TestCase,
	#instVars : [
		'builder'
	],
	#category : #'Famix-MetamodelBuilder-Tests'
}

{ #category : #running }
FamixMetamodelBuilderTestCase >> setUp [

	super setUp.
	builder := FamixMetamodelBuilder forTesting.

]
