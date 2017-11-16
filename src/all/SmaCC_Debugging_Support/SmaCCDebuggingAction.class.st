Class {
	#name : #SmaCCDebuggingAction,
	#superclass : #DebugAction,
	#category : 'SmaCC_Debugging_Support'
}

{ #category : #testing }
SmaCCDebuggingAction >> appliesToContext: aContext [
	^ self session isActive
]

{ #category : #private }
SmaCCDebuggingAction >> stepUntil: aBlock [
	| context process originalContext |
	process := self session process.
	originalContext := self currentContext.
	context := originalContext.
	[ context notNil and: [ process isTerminating not and: [ process isTerminated not and: [ aBlock value: context ] ] ] ]
		whileFalse: [ context := process step: context ].
	self session updateWithContext: context fromProcess: process
]
