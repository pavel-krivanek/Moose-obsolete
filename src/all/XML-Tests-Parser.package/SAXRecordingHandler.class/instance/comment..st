handling - lexical
comment: aString
	self
		recordMessageReceiver: self
		selector: #comment:
		arguments:
			(OrderedCollection new
				addLast: aString;
				yourself)