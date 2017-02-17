notifying
added: anObject to: aList
	self messageRecorder
		recordMessageReceiver: self
		selector: #added:to:
		arguments: (Array with: anObject with: aList)