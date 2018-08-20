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
	c1 := FmxNGSandClass named: 'Class1'.
	c2 := FmxNGSandClass named: 'Class2'.
	m1 := FmxNGSandMethod named: 'method1'.
	m2 := FmxNGSandMethod named: 'method2'.
	anchor1 := FmxNGTest1SourceTextAnchor new source: 'method1\source1' withCRs .
	anchor2 := FmxNGTest1SourceTextAnchor new source: 'method2\source2a\source2b' withCRs .
	
	model addAll: { c1. c2. m1. m2. anchor1. anchor2 }.

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
