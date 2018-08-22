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
		'anchor2',
		'm3',
		'anchor3'
	],
	#category : #'FmxNGTest1-Tests'
}

{ #category : #running }
FmxNGTest1Test >> setUp [

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
FmxNGTest1Test >> testCategory [

	self assert: m1 category isNil.
	m1 category: 'accessing'.
	self assert: m1 category equals: 'accessing'.

]

{ #category : #tests }
FmxNGTest1Test >> testHasClassScope [

	m1 hasClassScope: true.
	self assert: m1 hasClassScope.

]

{ #category : #tests }
FmxNGTest1Test >> testIsClass [

	self assert: c1 isClass. 	
	self assert: c2 isClass. 
	self deny: m1 isClass.
	self deny: m2 isClass.
	self deny: anchor1 isClass.
	self deny: anchor2 isClass.
]

{ #category : #tests }
FmxNGTest1Test >> testIsConstant [

	self deny: m1 isConstant.
	m1 kind: #constant.
	self assert: m1 isConstant.

]

{ #category : #tests }
FmxNGTest1Test >> testIsConstructor [

	self deny: m1 isConstructor.
	m1 isConstructor: true.
	self assert: m1 isConstructor.

]

{ #category : #tests }
FmxNGTest1Test >> testIsGetter [

	self deny: m1 isGetter.
	m1 kind: #getter.
	self assert: m1 isGetter.

]

{ #category : #tests }
FmxNGTest1Test >> testIsInterface [

	self deny: c1 isInterface.
	c1 isInterface: true.
	self assert: c1 isInterface.
	

]

{ #category : #tests }
FmxNGTest1Test >> testIsMethod [

	self deny: m1 isPureAccessor.
	m1 kind: #getter.
	self assert: m1 isPureAccessor.
	m1 kind: #setter.
	self assert: m1 isPureAccessor.

]

{ #category : #tests }
FmxNGTest1Test >> testIsSetter [

	self deny: m1 isSetter.
	m1 kind: #setter.
	self assert: m1 isSetter.

]

{ #category : #tests }
FmxNGTest1Test >> testIsTestCase [

	self deny: c1 isTestCase.
	c1 isTestCase: true.
	self assert: c1 isTestCase.
	

]

{ #category : #tests }
FmxNGTest1Test >> testMethodsGroup [
	
	| group | 
	
	group := c1 methodsGroup.
	self assertCollection: group entities hasSameElements: { m1 }.
]

{ #category : #tests }
FmxNGTest1Test >> testNumberOfAccessorMethods [

	m1 kind: #getter.
	self assert: c1 numberOfAccessorMethods equals: 1.
	c1 numberOfAccessorMethods: 100.
	self assert: c1 numberOfAccessorMethods equals: 100.

]

{ #category : #tests }
FmxNGTest1Test >> testNumberOfConstructorMethods [

	m1 isConstructor: true.
	self assert: c1 numberOfConstructorMethods equals: 1.
	c1 numberOfConstructorMethods: 100.
	self assert: c1 numberOfConstructorMethods equals: 100.

]

{ #category : #tests }
FmxNGTest1Test >> testNumberOfLinesOfCode [

	self assert: c1 numberOfLinesOfCode equals: 2.
	self assert: c2 numberOfLinesOfCode equals: 7.


]

{ #category : #tests }
FmxNGTest1Test >> testNumberOfMethods [

	self assert: c1 numberOfMethods equals: 1.

	"explicit count"
	c1 numberOfMethods: 100.
	self assert: c1 numberOfMethods equals: 100.

]

{ #category : #tests }
FmxNGTest1Test >> testParentTypeIsStub [

	self deny: m1 parentTypeIsStub.
	c1 stub: true.
	self assert: m1 parentTypeIsStub.

]

{ #category : #tests }
FmxNGTest1Test >> testRelations [

	self assertCollection: c1 methods hasSameElements:  { m1 }.	
	self assertCollection: c2 methods hasSameElements:  { m2. m3 }.
	self assertCollection: m1 parentType equals: c1.
	self assertCollection: m2 parentType equals: c2.
]
