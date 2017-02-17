recording
recordMessageReceiver: anObject selector: aSelector arguments: aSequenceableCollection
	self recordMessage:
		(MessageSend
			receiver: anObject
			selector: aSelector
			arguments: aSequenceableCollection asArray)