Class {
	#name : #FmxNGTWithImmediateSourceTest,
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
FmxNGTWithImmediateSourceTest >> setUp [

	super setUp.

	model := MooseModel new.
	m1 := FmxNGTest1Method named: 'method1'.
	m2 := FmxNGTest1Method named: 'method2'.
	anchor := FmxNGTest1SourceTextAnchor new.
	
	model addAll: { m1. m2. anchor }.

	

]

{ #category : #tests }
FmxNGTWithImmediateSourceTest >> testIsFile [

	self deny: anchor isFile
]

{ #category : #tests }
FmxNGTWithImmediateSourceTest >> testSource [

	anchor source: 'a code'.
	self assert: anchor source equals: 'a code'.	
]

{ #category : #tests }
FmxNGTWithImmediateSourceTest >> testSourceText [

	self assert: anchor sourceText isNil.
	
	anchor source: 'a code'.
	self assert: anchor sourceText equals: 'a code'
]
