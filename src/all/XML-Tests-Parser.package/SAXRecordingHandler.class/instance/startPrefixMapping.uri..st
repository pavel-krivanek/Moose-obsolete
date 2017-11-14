handling - content
startPrefixMapping: aPrefix uri: aURI
	self
		recordMessageReceiver: self
		selector: #startPrefixMapping:uri:
		arguments:
			(OrderedCollection new
				addLast: aPrefix;
				addLast: aURI;
				yourself)