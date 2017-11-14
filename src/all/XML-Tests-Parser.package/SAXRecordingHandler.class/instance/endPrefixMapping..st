handling - content
endPrefixMapping: aPrefix
	self
		recordMessageReceiver: self
		selector: #endPrefixMapping:
		arguments:
			(OrderedCollection new
				addLast: aPrefix;
				yourself)