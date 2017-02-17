handling - content
endPrefixMapping: aPrefix
	self messageRecorder
		recordMessageReceiver: self
		selector: #endPrefixMapping:
		arguments:
			(OrderedCollection new
				addLast: aPrefix;
				yourself)