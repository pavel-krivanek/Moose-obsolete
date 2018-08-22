Class {
	#name : #FmxNGTest1TestIssue20,
	#superclass : #TestCase,
	#instVars : [
		'model',
		'c1',
		'c2',
		'm1',
		'm2',
		'anchor1',
		'anchor2',
		'm3'
	],
	#category : #'FmxNGTest1-Tests'
}

{ #category : #running }
FmxNGTest1TestIssue20 >> setUp [

	super setUp.

	model := MooseModel new.
	c1 := FmxNGTest1Class named: 'Class1'.
	c2 := FmxNGTest1Class named: 'Class2'.
	m1 := FmxNGTest1Method named: 'method1'.
	m2 := FmxNGTest1Method named: 'method2'.
	m3 := FmxNGTest1Method named: 'method3'.
	anchor1 := FmxNGTest1SourceTextAnchor new source: 'method1\source1' withCRs .
	anchor2 := FmxNGTest1SourceTextAnchor new source: 'method2\source2a\source2b' withCRs.
	
	model addAll: { c1. c2. m1. m2. m3. anchor1. anchor2 }.
	
	c1 addMethod: m1.
	m2 parentType: c2. "opposite way"
	c2 addMethod: m3.
	m1 sourceAnchor: anchor1.
	m2 sourceAnchor: anchor2.

]

{ #category : #tests }
FmxNGTest1TestIssue20 >> testNumberOfLinesOfCode [

	<expectedFailure>
	
	self assert: c1 numberOfLinesOfCode equals: 2.
	self assert: c2 numberOfLinesOfCode equals: 3.
	self assert: m3 numberOfLinesOfCode equals: -1.


]
