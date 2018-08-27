Class {
	#name : #FmxNGTWithSourceLanguageTest,
	#superclass : #TestCase,
	#instVars : [
		'model',
		'm1',
		'm2',
		'anchor',
		'lang'
	],
	#category : #'FmxNGTest1-Tests'
}

{ #category : #running }
FmxNGTWithSourceLanguageTest >> setUp [

	super setUp.

	model := MooseModel new.
	m1 := FmxNGTest1Method named: 'method1'.
	m2 := FmxNGTest1Method named: 'method2'.
	lang := FmxNGTest1SourceLanguage new.
	
	anchor := FmxNGTest1SourceTextAnchor new.
	

]

{ #category : #tests }
FmxNGTWithSourceLanguageTest >> testAddSourcedEntity [

	lang addSourcedEntity: m1.
	self assertCollection: lang sourcedEntities hasSameElements: { m1 }.
	lang addSourcedEntity: m2.
	self assertCollection: lang sourcedEntities hasSameElements: { m1. m2 }.


]

{ #category : #tests }
FmxNGTWithSourceLanguageTest >> testDeclaredSourceLanguage [

	self assert: m1 declaredSourceLanguage isNil.
	m1 declaredSourceLanguage: lang.
	self assert: m1 declaredSourceLanguage equals: lang.
]
