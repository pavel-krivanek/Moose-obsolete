"
This signal only stores the RingMethodDefinition and like that it does not hold the real entire stack. This is safer and smaller to store and serialize.

Usage:
	MethodStackSignal emit
	
Full Example:
	TranscriptLogger new 
		runDuring: [ MethodStackSignal emit ].

"
Class {
	#name : #MethodStackSignal,
	#superclass : #ThisContextSignal,
	#category : #Beacon-Core-Signals
}

{ #category : #initialize }
MethodStackSignal >> currentStack [
	| stackWithoutSelf |
	stackWithoutSelf := thisContext stack reject: [ :each | 
								each receiver = self or: [ 
									each receiver = self class ] ].
	^ stackWithoutSelf collect: [ :each | each method asRingDefinition ]
]
