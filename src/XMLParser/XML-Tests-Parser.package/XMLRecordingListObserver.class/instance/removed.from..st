notifying
removed: anObject from: aList
	self messageRecorder
		recordMessageReceiver: self
		selector: #removed:from:
		arguments: (Array with: anObject with: aList)