handling - content
characters: aString
	self
		recordMessageReceiver: self
		selector: #characters:
		arguments:
			(OrderedCollection new
				addLast: aString;
				yourself)