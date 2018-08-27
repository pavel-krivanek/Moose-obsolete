Class {
	#name : #FmxNGTAssociationTest,
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
		'association1',
		'association2'
	],
	#category : #'FmxNGTest1-Tests'
}

{ #category : #running }
FmxNGTAssociationTest >> setUp [

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
	association1 := FmxNGTest1Association new.
	association2 := FmxNGTest1Association new.
	
	model addAll: { c1. c2. m1. m2. m3. anchor1. anchor2. association1. association2 }.
	
	c1 addMethod: m1.
	m2 parentType: c2. "opposite way"
	c2 addMethod: m3.
	m1 sourceAnchor: anchor1.
	m2 sourceAnchor: anchor2.
	m3 sourceAnchor: anchor3.

]

{ #category : #tests }
FmxNGTAssociationTest >> testIsAssociation [

	self assert: association1 isAssociation.
	self deny: c1 isAssociation. 	
	self deny: m1 isAssociation.
	self deny: anchor1 isAssociation.

]

{ #category : #tests }
FmxNGTAssociationTest >> testNext [

	self assert: association1 next isNil.
	association1 next: association2.
	self assert: association1 next equals: association2.
	self assert: association2 previous equals: association1.

]

{ #category : #tests }
FmxNGTAssociationTest >> testPrevious [

	self assert: association1 previous isNil.
	association1 previous: association2.
	self assert: association1 previous equals: association2.
	self assert: association2 next equals: association1.
	

]
