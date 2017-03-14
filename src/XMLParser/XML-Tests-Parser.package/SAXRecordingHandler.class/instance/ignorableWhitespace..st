handling - content
ignorableWhitespace: aString
	self messageRecorder
		recordMessageReceiver: self
		selector: #ignorableWhitespace:
		arguments:
			(OrderedCollection new
				addLast: aString;
				yourself)