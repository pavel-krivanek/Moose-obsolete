"
This signal  stores the Context objects and like this it is more suitable for reasoning about execution flows that also include information about receivers.

Usage:
	ContextStackSignal emit
	
Full Example:
	TranscriptLogger new 
		runDuring: [ ContextStackSignal emit ].

"
Class {
	#name : #ContextStackSignal,
	#superclass : #ThisContextSignal,
	#category : 'Beacon-Core-Signals'
}

{ #category : #initialize }
ContextStackSignal >> currentStack [
	^thisContext stack 
		reject: [ :each | 
			each receiver = self or: [ 
				each receiver = self class ] ]
]
