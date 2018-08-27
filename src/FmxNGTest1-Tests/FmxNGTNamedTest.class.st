Class {
	#name : #FmxNGTNamedTest,
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
FmxNGTNamedTest >> setUp [

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
FmxNGTNamedTest >> testHasUniqueMooseNameInModel [

	self assert: c1 hasUniqueMooseNameInModel.	
	self assert: c2 hasUniqueMooseNameInModel.
]

{ #category : #tests }
FmxNGTNamedTest >> testMooseNameOn [

	| newEntity |
	
	newEntity := FmxNGTest1Class new.

	self assert: (String streamContents: [ :s | newEntity mooseNameOn: s ]) equals: ''.
	
	newEntity name: 'NewEntity'.
	self assert: (String streamContents: [ :s | newEntity mooseNameOn: s ]) equals: 'NewEntity'.
]

{ #category : #tests }
FmxNGTNamedTest >> testName [

	self assert: c1 name equals: 'Class1'.
	c1 name: 'NewName'.
	self assert: c1 name equals: 'NewName'.

]

{ #category : #tests }
FmxNGTNamedTest >> testNameLength [

	self assert: m1 nameLength equals: 7.	
	self assert: c1 nameLength equals: 6.
]

{ #category : #tests }
FmxNGTNamedTest >> testNameResetsNameOfChildren [

	self assert: m1 mooseName equals: 'Class1.method1'.
	c1 name: 'NewName'.
	self assert: m1 mooseName equals: 'NewName.method1'.


]

{ #category : #tests }
FmxNGTNamedTest >> testResetMooseName [

	"more or less a smoke test"
	self assert: c1 name equals: 'Class1'.
	c1 resetMooseName.
	self assert: c1 name equals: 'Class1'.

]
