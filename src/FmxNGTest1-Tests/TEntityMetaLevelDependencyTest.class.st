Class {
	#name : #TEntityMetaLevelDependencyTest,
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
TEntityMetaLevelDependencyTest >> setUp [

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
TEntityMetaLevelDependencyTest >> testAddAllChildrenIn [

	| aCollection |
	
	aCollection := Set new.
	c1 addAllChildrenIn: aCollection.
	self assertCollection: aCollection hasSameElements: { m1. anchor1 }.
]

{ #category : #tests }
TEntityMetaLevelDependencyTest >> testAddAllParentsIn [

	| aCollection |
	
	aCollection := Set new.
	m1 addAllParentsIn: aCollection.
	self assertCollection: aCollection hasSameElements: { c1 }.
]

{ #category : #tests }
TEntityMetaLevelDependencyTest >> testAllAtScope [

	| aCollection |
	
	aCollection := m1 allAtScope: FmxNGTMethod.
	self assertCollection: aCollection hasSameElements: { m1 }.

	aCollection := m1 allAtScope: FmxNGTClass.
	self assertCollection: aCollection hasSameElements: { c1 }.
]

{ #category : #tests }
TEntityMetaLevelDependencyTest >> testBelongsTo [

	self assert: m1 belongsTo equals: c1.
	
	m1 belongsTo: c2.
	self assert: m1 parentType equals: c2.
	self assert: c1 numberOfMethods equals: 0.
	self assert: (c2 methods includes: m1).

]

{ #category : #tests }
TEntityMetaLevelDependencyTest >> testQueryLocalIncoming [

	"just smoke test"
	self assert: (c1 queryLocalIncoming: FmxNGTInheritanceGlue) isEmpty.
]
