Class {
	#name : #FmxNGTSourceLanguageTest,
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
FmxNGTSourceLanguageTest >> setUp [

	super setUp.

	model := MooseModel new.
	m1 := FmxNGTest1Method named: 'method1'.
	m2 := FmxNGTest1Method named: 'method2'.
	lang := FmxNGTest1SourceLanguage new.
	
	anchor := FmxNGTest1SourceTextAnchor new.
	

]

{ #category : #tests }
FmxNGTSourceLanguageTest >> testAddSourcedEntity [

	lang addSourcedEntity: m1.
	self assertCollection: lang sourcedEntities hasSameElements: { m1 }.
	lang addSourcedEntity: m2.
	self assertCollection: lang sourcedEntities hasSameElements: { m1. m2 }.


]

{ #category : #tests }
FmxNGTSourceLanguageTest >> testIsAttached [

	self deny: lang isAttached.
	lang addSourcedEntity: m1.
	self assert: lang isAttached.
]

{ #category : #tests }
FmxNGTSourceLanguageTest >> testIsFile [

	self deny: lang isAttached.
]

{ #category : #tests }
FmxNGTSourceLanguageTest >> testSourcedEntities [

	self assert: lang sourcedEntities isEmpty.
	lang addSourcedEntity: m1.
	lang addSourcedEntity: m2.
	self assertCollection: lang sourcedEntities hasSameElements: { m1. m2 }.


]
