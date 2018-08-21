Class {
	#name : #FmxNGTest1Test,
	#superclass : #TestCase,
	#instVars : [
		'model',
		'c1',
		'c2',
		'm1',
		'm2',
		'anchor1',
		'anchor2'
	],
	#category : #'FmxNGTest1-Tests'
}

{ #category : #running }
FmxNGTest1Test >> setUp [

	model := MooseModel new.
	c1 := FmxNGTest1Class named: 'Class1'.
	c2 := FmxNGTest1Class named: 'Class2'.
	m1 := FmxNGTest1Method named: 'method1'.
	m2 := FmxNGTest1Method named: 'method2'.
	anchor1 := FmxNGTest1SourceTextAnchor new source: 'method1\source1' withCRs .
	anchor2 := FmxNGTest1SourceTextAnchor new source: 'method2\source2a\source2b' withCRs.
	
	model addAll: { c1. c2. m1. m2. anchor1. anchor2 }.
	
	c1 addMethod: m1.
	m2 parentType: c2. "opposite way"

]

{ #category : #running }
FmxNGTest1Test >> testIsClass [

	self assert: c1 isClass. 	
	self assert: c2 isClass. 
	self deny: m1 isClass.
	self deny: m2 isClass.
	self deny: anchor1 isClass.
	self deny: anchor2 isClass.
]

{ #category : #running }
FmxNGTest1Test >> testIsInterface [

	self deny: c1 isInterface.
	c1 isInterface: true.
	self assert: c1 isInterface.
	

]

{ #category : #running }
FmxNGTest1Test >> testIsTestCase [

	self deny: c1 isTestCase.
	c1 isTestCase: true.
	self assert: c1 isTestCase.
	

]

{ #category : #running }
FmxNGTest1Test >> testMethodsGroup [
	
	| group | 
	
	group := c1 methodsGroup.
	self assertCollection: group entities hasSameElements: { m1 }.
]

{ #category : #running }
FmxNGTest1Test >> testNumberOfMethods [

	self assert: c1 numberOfMethods equals: 1.

	"explicit count"
	c1 numberOfMethods: 100.
	self assert: c1 numberOfMethods equals: 100.

]

{ #category : #running }
FmxNGTest1Test >> testRelations [

	self assertCollection: c1 methods hasSameElements:  { m1 }.	
	self assertCollection: c2 methods hasSameElements:  { m2 }.
	self assertCollection: m1 parentType equals: c1.
	self assertCollection: m2 parentType equals: c2.
]
