Class {
	#name : #MooseObjectExtensionsTest,
	#superclass : #TestCase,
	#category : #Moose-Tests-Core
}

{ #category : #testing }
MooseObjectExtensionsTest >> testMooseDisplayString [
	self assert: (Object canUnderstand: #mooseDisplayString).
	self assert: (Object canUnderstand: #mooseDisplayStringOn:)
]
