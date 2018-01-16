"
coverage:

blacklistClasses := { FamixMetamodelBuilderRealEnvironment. FamixMetamodelGenerator }.
methods := 'Famix-MetamodelBuilder-Core' asPackage methods copyWithoutAll: (blacklistClasses flatCollect: #localMethods).

testRunner := TestRunner new.
testRunner instVarNamed: #packagesSelected put: #('Famix-MetamodelBuilder-Tests').
testRunner selectSubclasses.
testRunner collectCoverageFor: (methods collect: #asRingDefinition)
"
Class {
	#name : #FamixMetamodelBuilderTest,
	#superclass : #TestCase,
	#instVars : [
		'builder'
	],
	#category : #'Famix-MetamodelBuilder-Tests'
}

{ #category : #tests }
FamixMetamodelBuilderTest >> setUp [

	builder := FamixMetamodelBuilder forTesting.

]

{ #category : #tests }
FamixMetamodelBuilderTest >> testDoNotGenerateCurrent [
	
	builder newClassNamed: #Behavior.	
	builder newTraitNamed: #TBehavior.

	builder doNotGenerateCurrent.
	
	builder newClassNamed: #Class.
	builder newTraitNamed: #TClass.
	
	builder generate.
	
	self deny: (builder testingEnvironment ask includesClassNamed: 'TstBehavior').
	self deny: (builder testingEnvironment ask includesClassNamed: 'TstTBehavior').
	self assert: (builder testingEnvironment ask includesClassNamed: 'TstClass').
	self assert: (builder testingEnvironment ask includesClassNamed: 'TstTClass').

]

{ #category : #tests }
FamixMetamodelBuilderTest >> testEmptyBuilder [

	| classesCount |
	classesCount := builder testingEnvironment ask allClasses size.
	"FMOne+superclass, FMMany+superclass"
	builder generate.
	self assert: builder testingEnvironment ask allClasses size equals: classesCount.

]

{ #category : #tests }
FamixMetamodelBuilderTest >> testEnsureClassNamed [
	
	| behavior class behavior2 |
	
	behavior := builder ensureClassNamed: #Behavior.	
	class := builder ensureClassNamed: #Class.	

	self assert: (builder classes includes: behavior).
	self assert: (builder classes includes: class).

	behavior2 := builder ensureClassNamed: #Behavior.	

	self assert: (behavior2 == behavior).
	
]
