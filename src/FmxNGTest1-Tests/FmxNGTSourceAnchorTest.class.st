Class {
	#name : #FmxNGTSourceAnchorTest,
	#superclass : #TestCase,
	#instVars : [
		'model',
		'm1',
		'm2',
		'anchor'
	],
	#category : #'FmxNGTest1-Tests'
}

{ #category : #running }
FmxNGTSourceAnchorTest >> setUp [

	super setUp.

	model := MooseModel new.
	m1 := FmxNGTest1Method named: 'method1'.
	m2 := FmxNGTest1Method named: 'method2'.
	anchor := FmxNGTest1SourceAnchor new.
	

]

{ #category : #tests }
FmxNGTSourceAnchorTest >> testElement [

	anchor element: m1.
	self assert: anchor element equals: m1.
	self assert: m1 sourceAnchor equals: anchor.
	
	anchor element: m2.
	self assert: anchor element equals: m2.
	self assert: m2 sourceAnchor equals: anchor.
	
]

{ #category : #tests }
FmxNGTSourceAnchorTest >> testLineCount [

	self assert: anchor lineCount equals: model notExistentMetricValue.
	
]

{ #category : #tests }
FmxNGTSourceAnchorTest >> testSourceText [

	"source text is empty by default"
	self assert: anchor sourceText isNil
]
