handling - content
ignorableWhitespace: aString
	self
		recordMessageReceiver: self
		selector: #ignorableWhitespace:
		arguments:
			(OrderedCollection new
				addLast: aString;
				yourself)