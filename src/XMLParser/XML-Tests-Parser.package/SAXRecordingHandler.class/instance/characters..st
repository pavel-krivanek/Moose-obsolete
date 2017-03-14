handling - content
characters: aString
	self messageRecorder
		recordMessageReceiver: self
		selector: #characters:
		arguments:
			(OrderedCollection new
				addLast: aString;
				yourself)