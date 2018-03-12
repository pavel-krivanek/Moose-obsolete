Class {
	#name : #FamixEnumTest,
	#superclass : #TestCase,
	#category : #'Famix-Tests-Java'
}

{ #category : #tests }
FamixEnumTest >> testValues [
	| enum value |
	enum := FmxNGEnum new.
	value := FmxNGEnumValue new.
	enum values: (OrderedCollection with: value).
	self assert: enum values size equals: 1.
	self assert: value parentEnum equals: enum
]
