"
A CurrentStackSignalTest is xxxxxxxxx.

"
Class {
	#name : #MethodStackSignalTest,
	#superclass : #TestCase,
	#category : #Beacon-Core-Tests
}

{ #category : #testing }
MethodStackSignalTest >> testRemovesIrrelevantStackEntriesFromOnTop [
	| signal |
	signal := MethodStackSignal emit.
	self assert: signal stack first = thisContext stack first method asRingDefinition
]
