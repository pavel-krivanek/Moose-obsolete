accessing
peekMessage
	^ self hasMessages
		ifTrue: [self messageQueue first]
		ifFalse: [nil]