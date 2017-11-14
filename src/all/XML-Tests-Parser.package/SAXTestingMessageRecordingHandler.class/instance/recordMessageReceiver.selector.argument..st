recording
recordMessageReceiver: anObject selector: aSelector argument: anArgument
	self recordTestingMessages.
	super
		recordMessageReceiver: anObject
		selector: aSelector
		argument: anArgument.