Class {
	#name : #FmxNGTMethodTest,
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
FmxNGTMethodTest >> setUp [

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
FmxNGTMethodTest >> testBelongsTo [

	self assert: m1 belongsTo equals: c1.
	
	m1 belongsTo: c2.
	self assert: m1 parentType equals: c2.
	self assert: c1 numberOfMethods equals: 0.
	self assert: (c2 methods includes: m1).

]

{ #category : #tests }
FmxNGTMethodTest >> testCategory [

	self assert: m1 category isNil.
	m1 category: 'accessing'.
	self assert: m1 category equals: 'accessing'.

]

{ #category : #tests }
FmxNGTMethodTest >> testComputeNumberOfLinesOfCode [

	| withoutSource |
	
	self assert: m1 computeNumberOfLinesOfCode equals: 2.
	self assert: m2 computeNumberOfLinesOfCode equals: 3.

	withoutSource := FmxNGTest1Method named: #withoutSource.
	self assert: withoutSource computeNumberOfLinesOfCode equals: model notExistentMetricValue
]

{ #category : #tests }
FmxNGTMethodTest >> testCyclomaticComplexity [

	self assert: m1 cyclomaticComplexity equals: model notExistentMetricValue.
	m1 cyclomaticComplexity: 100.
	self assert: m1 cyclomaticComplexity equals: 100.

]

{ #category : #tests }
FmxNGTMethodTest >> testHasClassScope [

	m1 hasClassScope: true.
	self assert: m1 hasClassScope.

]

{ #category : #tests }
FmxNGTMethodTest >> testIsClass [

	self assert: c1 isClass. 	
	self assert: c2 isClass. 
	self deny: m1 isClass.
	self deny: m2 isClass.
	self deny: anchor1 isClass.
	self deny: anchor2 isClass.
]

{ #category : #tests }
FmxNGTMethodTest >> testIsConstant [

	self deny: m1 isConstant.
	m1 kind: #constant.
	self assert: m1 isConstant.

]

{ #category : #tests }
FmxNGTMethodTest >> testIsConstructor [

	self deny: m1 isConstructor.
	m1 isConstructor: true.
	self assert: m1 isConstructor.

]

{ #category : #tests }
FmxNGTMethodTest >> testIsGetter [

	self deny: m1 isGetter.
	m1 kind: #getter.
	self assert: m1 isGetter.

]

{ #category : #tests }
FmxNGTMethodTest >> testIsMethod [

	self assert: m1 isMethod.
	self deny: c1 isMethod.
]

{ #category : #tests }
FmxNGTMethodTest >> testIsPureAccessor [

	self deny: m1 isPureAccessor.
	m1 kind: #getter.
	self assert: m1 isPureAccessor.
	m1 kind: #setter.
	self assert: m1 isPureAccessor.

]

{ #category : #tests }
FmxNGTMethodTest >> testIsSetter [

	self deny: m1 isSetter.
	m1 kind: #setter.
	self assert: m1 isSetter.

]

{ #category : #tests }
FmxNGTMethodTest >> testKind [

	m1 kind: #constant.
	self assert: m1 kind equals: #constant.

]

{ #category : #tests }
FmxNGTMethodTest >> testNumberOfLinesOfCode [

	self assert: m1 numberOfLinesOfCode equals: 2.
	self assert: m2 numberOfLinesOfCode equals: 3.
	m1 numberOfLinesOfCode: 100.
	self assert: m1 numberOfLinesOfCode equals: 100.
	


]

{ #category : #tests }
FmxNGTMethodTest >> testNumberOfMessageSends [

	self assert: m1 numberOfMessageSends equals: model notExistentMetricValue.
	m1 numberOfMessageSends: 100.
	self assert: m1 numberOfMessageSends equals: 100.

]

{ #category : #tests }
FmxNGTMethodTest >> testParentType [

	self assertCollection: m1 parentType equals: c1.
	self assertCollection: m2 parentType equals: c2.
]

{ #category : #tests }
FmxNGTMethodTest >> testParentTypeIsStub [

	self deny: m1 parentTypeIsStub.
	c1 stub: true.
	self assert: m1 parentTypeIsStub.

]

{ #category : #tests }
FmxNGTMethodTest >> testRelations [

	self assertCollection: c1 methods hasSameElements:  { m1 }.	
	self assertCollection: c2 methods hasSameElements:  { m2. m3 }.
	self assertCollection: m1 parentType equals: c1.
	self assertCollection: m2 parentType equals: c2.
]

{ #category : #tests }
FmxNGTMethodTest >> testTimeStamp [

	self assert: m1 timeStamp isNil.
	m1 timeStamp: 'stamp'.
	self assert: m1 timeStamp equals: 'stamp'.

]
