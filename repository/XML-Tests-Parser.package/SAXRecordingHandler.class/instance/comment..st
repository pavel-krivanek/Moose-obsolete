handling - lexical
comment: aString
	self messageRecorder
		recordMessageReceiver: self
		selector: #comment:
		arguments:
			(OrderedCollection new
				addLast: aString;
				yourself)