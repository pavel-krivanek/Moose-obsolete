recording
recordMessageReceiver: anObject selector: aSelector
	self recordTestingMessages.
	super
		recordMessageReceiver: anObject
		selector: aSelector.