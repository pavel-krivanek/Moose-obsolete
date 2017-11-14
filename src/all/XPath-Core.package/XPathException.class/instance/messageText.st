accessing
messageText
	^ self hasPosition
		ifTrue: [super messageText, ' (near pos. ', self position asString, ')']
		ifFalse: [super messageText]