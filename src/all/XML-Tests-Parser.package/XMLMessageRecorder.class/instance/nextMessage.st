accessing
nextMessage
	^ self hasMessages
		ifTrue: [self messageQueue removeFirst]
		ifFalse: [nil]