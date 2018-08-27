Class {
	#name : #FmxNGTWithSourceAnchorTest,
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
FmxNGTWithSourceAnchorTest >> setUp [

	super setUp.

	model := MooseModel new.
	c1 := FmxNGTest1Class named: 'Class1'.
	c2 := FmxNGTest1Class named: 'Class2'.
	m1 := FmxNGTest1Method named: 'method1'.
	m2 := FmxNGTest1Method named: 'method2'.
	m3 := FmxNGTest1Method named: 'method3'.
	anchor1 := FmxNGTest1SourceTextAnchor new source: 'method1\source1' withCRs .
	anchor2 := FmxNGTest1SourceTextAnchor new source: 'abc\ab\a\ a  \ ab \abc\ab' withCRs.
	anchor3 := FmxNGTest1SourceTextAnchor new source: 'method3\source3a\source3b\source3c' withCRs.
	
	model addAll: { c1. c2. m1. m2. m3. anchor1. anchor2 }.
	
	c1 addMethod: m1.
	m2 parentType: c2. "opposite way"
	c2 addMethod: m3.
	m1 sourceAnchor: anchor1.
	m2 sourceAnchor: anchor2.

]

{ #category : #tests }
FmxNGTWithSourceAnchorTest >> testHasSourceAnchor [

	self assert: m1 hasSourceAnchor.
	self deny: m3 hasSourceAnchor.
]

{ #category : #tests }
FmxNGTWithSourceAnchorTest >> testNumberOfLinesOfCodeWithMoreThanOneCharacter [
	
	self assert: m1 numberOfLinesOfCodeWithMoreThanOneCharacter equals: 2.

	self assert: m2 numberOfLinesOfCodeWithMoreThanOneCharacter equals: 5.

	self assert: m3 numberOfLinesOfCodeWithMoreThanOneCharacter equals: 0.
	m3 sourceAnchor: anchor3.
	m3 resetPrivateState.
	self assert: m3 numberOfLinesOfCodeWithMoreThanOneCharacter equals: 4.

]

{ #category : #tests }
FmxNGTWithSourceAnchorTest >> testSourceAnchor [

	self assert: m1 sourceAnchor equals: anchor1.
	
	self assert: m3 sourceAnchor isNil.
	m3 sourceAnchor: anchor3.
	self assert: m3 sourceAnchor equals: anchor3.

]

{ #category : #tests }
FmxNGTWithSourceAnchorTest >> testSourceText [

	self assert: m3 sourceText equals: ''.
	self assert: m1 sourceText equals: 'method1\source1' withCRs.
	
]

{ #category : #tests }
FmxNGTWithSourceAnchorTest >> testSourceTextForStub [

	self assert: m1 sourceText equals: 'method1\source1' withCRs.
	m1 isStub: true.
	self assert: m1 sourceText equals: ''.
	
	
]
