recording
recordMessageReceiver: anObject selector: aSelector arguments: aSequenceableCollection
	self recordTestingMessages.
	super
		recordMessageReceiver: anObject
		selector: aSelector
		arguments: aSequenceableCollection.