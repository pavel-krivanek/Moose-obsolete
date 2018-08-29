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
		'anchor3',
		'anchorC1'
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
	anchorC1 := FmxNGTest1SourceTextAnchor new source: 'Class1 definition' withCRs.
	
	model addAll: { c1. c2. m1. m2. m3. anchor1. anchor2 }.
	
	c1 addMethod: m1.
	m2 parentType: c2. "opposite way"
	c2 addMethod: m3.
	c1 sourceAnchor: anchorC1.
	m1 sourceAnchor: anchor1.
	m2 sourceAnchor: anchor2.
	m3 sourceAnchor: anchor3.

]

{ #category : #tests }
TEntityMetaLevelDependencyTest >> testAddAllChildrenIn [

	| aCollection |
	
	aCollection := Set new.
	c1 addAllChildrenIn: aCollection.
	self assertCollection: aCollection hasSameElements: { m1 }.
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
	aCollection := m1 allAtScope: FmxNGTest1Method.
	self assertCollection: aCollection hasSameElements: { m1 }.

	aCollection := m1 allAtScope: FmxNGTClass.
	self assertCollection: aCollection hasSameElements: { c1 }.
	aCollection := m1 allAtScope: FmxNGTest1Class.
	self assertCollection: aCollection hasSameElements: { c1 }.
	
	aCollection := m1 allAtScope: FmxNGTest1SourceAnchor.
	self assertCollection: aCollection hasSameElements: { }.
	
]

{ #category : #tests }
TEntityMetaLevelDependencyTest >> testAllChildren [

	self assertCollection: c1 allChildren hasSameElements: { m1. }.
	self assertCollection: c2 allChildren hasSameElements: { m2. m3 }.
	self assertCollection: m1 allChildren hasSameElements: { }.
	self assert: anchor1 allChildren isEmpty.
]

{ #category : #tests }
TEntityMetaLevelDependencyTest >> testAllChildrenTypes [

	self assertCollection: c1 allChildrenTypes hasSameElements: { FmxNGTMethod }.
	self assertCollection: c2 allChildrenTypes hasSameElements: { FmxNGTMethod }.
	self assertCollection: m1 allChildrenTypes hasSameElements: { }.
	self assert: anchor1 allChildrenTypes isEmpty.
]

{ #category : #tests }
TEntityMetaLevelDependencyTest >> testAllIncomingAssociationTypes [

	"just smoke test, we have no associations in this testing meta-model"
	self assert: c1 allIncomingAssociationTypes isEmpty
]

{ #category : #tests }
TEntityMetaLevelDependencyTest >> testAllOutgoingAssociationTypes [

	"just smoke test, we have no associations in this testing meta-model"
	self assert: c1 allOutgoingAssociationTypes isEmpty
]

{ #category : #tests }
TEntityMetaLevelDependencyTest >> testAllParentTypes [
	
	self assertCollection: c1 allParentTypes hasSameElements: {  }.
	self assertCollection: m1 allParentTypes hasSameElements: { FmxNGTest1Class. FmxNGTWithMethods }.
	self assertCollection: anchor1 allParentTypes hasSameElements: { }.
	self assert: anchor1 allParentTypes isEmpty.
]

{ #category : #tests }
TEntityMetaLevelDependencyTest >> testAllParents [

	self assertCollection: c1 allParents hasSameElements: { }.
	self assertCollection: c2 allParents hasSameElements: { }.
	self assertCollection: m1 allParents hasSameElements: { c1 }.
	self assertCollection: anchor1 allParents hasSameElements: { }.

]

{ #category : #tests }
TEntityMetaLevelDependencyTest >> testAllToScope [

	self assertCollection: (c1 allToScope: FmxNGTClass) hasSameElements: { c1 }.
	self assertCollection: (c1 allToScope: FmxNGTest1Class) hasSameElements: { c1 }.

	self assertCollection: (c1 allToScope: FmxNGTMethod) hasSameElements: { m1 }.
	self assertCollection: (c1 allToScope: FmxNGTest1Method) hasSameElements: { m1 }.

	self assertCollection: (c2 allToScope: FmxNGTMethod) hasSameElements: { m2. m3 }.
	self assertCollection: (c2 allToScope: FmxNGTest1Method) hasSameElements: { m2. m3 }.

	self assertCollection: (c1 allToScope: FmxNGTSourceAnchor) hasSameElements: { }.
	self assertCollection: (c2 allToScope: FmxNGTest1SourceAnchor) hasSameElements: { }.

	self assertCollection: (m1 allToScope: FmxNGTClass) hasSameElements: { }.

]

{ #category : #tests }
TEntityMetaLevelDependencyTest >> testAllWithScope [

	self assertCollection: (c1 allWithScope: FmxNGTClass) hasSameElements: { c1 }.
	self assertCollection: (c1 allWithScope: FmxNGTest1Class) hasSameElements: { c1 }.

	self assertCollection: (c1 allWithScope: FmxNGTMethod) hasSameElements: { m1 }.
	self assertCollection: (c1 allWithScope: FmxNGTest1Method) hasSameElements: { m1 }.

	self assertCollection: (c2 allWithScope: FmxNGTMethod) hasSameElements: { m2. m3 }.
	self assertCollection: (c2 allWithScope: FmxNGTest1Method) hasSameElements: { m2. m3 }.

	self assertCollection: (c1 allWithScope: FmxNGTSourceAnchor) hasSameElements: { }.
	self assertCollection: (c1 allWithScope: FmxNGTest1SourceTextAnchor) hasSameElements: { }.
	self assertCollection: (c2 allWithScope: FmxNGTSourceAnchor) hasSameElements: { }.
	self assertCollection: (c2 allWithScope: FmxNGTest1SourceTextAnchor) hasSameElements: { }.

	self assertCollection: (m1 allWithScope: FmxNGTClass) hasSameElements: { }.
	self assertCollection: (m1 allWithScope: FmxNGTest1Class) hasSameElements: { }.

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
TEntityMetaLevelDependencyTest >> testChildren [

	self assertCollection: m1 children hasSameElements: { }.
	self assertCollection: c1 children hasSameElements: { m1 }.
	self assertCollection: c2 children hasSameElements: { m2. m3 }.
	self assertCollection: anchor1 children hasSameElements: { }.
	

]

{ #category : #tests }
TEntityMetaLevelDependencyTest >> testChildrenSelectors [

	self assertCollection: m1 childrenSelectors hasSameElements: { }.
	self assertCollection: c1 childrenSelectors hasSameElements: { #methods }.
	self assertCollection: c2 childrenSelectors hasSameElements: { #methods}.
	self assertCollection: anchor1 childrenSelectors hasSameElements: { }.
	

]

{ #category : #tests }
TEntityMetaLevelDependencyTest >> testIncomingAssociationTypes [

	"just smoke test, we have no associations in this testing meta-model"
	self assert: c1 incomingAssociationTypes isEmpty
]

{ #category : #tests }
TEntityMetaLevelDependencyTest >> testIncomingMSEProperties [

	"just smoke test, we have no associations in this testing meta-model"
	self assert: c1 incomingMSEProperties isEmpty
]

{ #category : #tests }
TEntityMetaLevelDependencyTest >> testOutgoingAssociationTypes [

	"just smoke test, we have no associations in this testing meta-model"
	self assert: c1 outgoingAssociationTypes isEmpty
]

{ #category : #tests }
TEntityMetaLevelDependencyTest >> testOutgoingMSEProperties [

	"just smoke test, we have no associations in this testing meta-model"
	self assert: c1 outgoingMSEProperties isEmpty
]

{ #category : #tests }
TEntityMetaLevelDependencyTest >> testParentTypes [

	self assertCollection: m1 parentTypes hasSameElements: { FmxNGTest1Class. FmxNGTWithMethods }.
 	self assertCollection: c1 parentTypes hasSameElements: { }.
 	self assertCollection: anchor1 parentTypes hasSameElements: { }.
]

{ #category : #tests }
TEntityMetaLevelDependencyTest >> testParents [

	| newMethod |
	
	self assertCollection: m1 parents hasSameElements: { c1 }.
	self assertCollection: m2 parents hasSameElements: { c2 }.
	self assertCollection: m3 parents hasSameElements: { c2 }.
	
	newMethod := FmxNGTest1Method new.
	self assert: newMethod parents isEmpty.

]

{ #category : #tests }
TEntityMetaLevelDependencyTest >> testQueryLocalIncoming [

	"just smoke test"
	self assert: (c1 queryLocalIncoming: FmxNGTInheritanceGlue) isEmpty.
]

{ #category : #tests }
TEntityMetaLevelDependencyTest >> testWithScope [

	self assertCollection: (c1 withScope: FmxNGTClass) hasSameElements: { c1 }.
	self assertCollection: (c1 withScope: FmxNGTest1Class) hasSameElements: { c1 }.

	self assertCollection: (c1 withScope: FmxNGTMethod) hasSameElements: { m1 }.
	self assertCollection: (c1 withScope: FmxNGTest1Method) hasSameElements: { m1 }.

	self assertCollection: (c2 withScope: FmxNGTMethod) hasSameElements: { m2. m3 }.
	self assertCollection: (c2 withScope: FmxNGTest1Method) hasSameElements: { m2. m3 }.

	self assertCollection: (c1 withScope: FmxNGTSourceAnchor) hasSameElements: { }.
	self assertCollection: (c1 withScope: FmxNGTest1SourceTextAnchor) hasSameElements: { }.
	self assertCollection: (c2 withScope: FmxNGTSourceAnchor) hasSameElements: { }.
	self assertCollection: (c2 withScope: FmxNGTest1SourceTextAnchor) hasSameElements: { }.

	self assertCollection: (m1 withScope: FmxNGTWithMethods) hasSameElements: { c1 }.
	self assertCollection: (m1 withScope: FmxNGTest1Class) hasSameElements: { c1 }.

]
