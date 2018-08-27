Class {
	#name : #FmxNGTest1TestIssue22,
	#superclass : #TestCase,
	#instVars : [
		'model',
		'c1',
		'c2',
		'c3',
		'm1',
		'm2',
		'm3',
		'anchor1',
		'anchor2',
		'anchor3'
	],
	#category : #'FmxNGTest1-Tests'
}

{ #category : #running }
FmxNGTest1TestIssue22 >> setUp [

	super setUp.

	model := MooseModel new.
	c1 := FmxNGTest1Class named: 'Class1'.
	c2 := FmxNGTest1Class named: 'Class2'.
	m1 := FmxNGTest1Method named: 'method1'.
	m2 := FmxNGTest1Method named: 'method2'.
	m3 := FmxNGTest1Method named: 'method3'.
	anchor1 := FmxNGTest1SourceTextAnchor new source: 'method1\source1' withCRs .
	anchor2 := FmxNGTest1SourceTextAnchor new source: 'method2\source2a\source2b' withCRs.
	anchor3 := FmxNGTest1SourceTextAnchor new source: 'method3\source3a\source3b\source3c' withCRs.
	
	model addAll: { c1. c2. m1. m2. m3. anchor1. anchor2 }.
	
	c1 addMethod: m1.
	m2 parentType: c2. "opposite way"
	c2 addMethod: m3.
	m1 sourceAnchor: anchor1.
	m2 sourceAnchor: anchor2.
	m3 sourceAnchor: anchor3.

]

{ #category : #tests }
FmxNGTest1TestIssue22 >> testNumberOfComments [

	| comment |
	
	<expectedFailure>
	
	"https://github.com/pavel-krivanek/Moose/issues/22"
	"FmxNGTWithCommentsTest>>#testNumberOfComments"
	
	comment := FmxNGTest1Comment new.
	self assert: c1 numberOfComments equals: 0.
	c1 resetPrivateState.
	c1 addComment: comment.
	self assert: c1 numberOfComments equals: 2.
	c1 resetPrivateState.
	c1 addComment: comment.
	self assert: c1 numberOfComments equals: 3.
	c1 resetPrivateState.
	c1 numberOfComments: 100.
	self assert: c1 numberOfComments equals: 100.
	
]
