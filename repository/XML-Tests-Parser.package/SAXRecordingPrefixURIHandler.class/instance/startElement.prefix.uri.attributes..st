handling - content
startElement: aQualifiedName prefix: aPrefix uri: aURI attributes: aDictionary
	self messageRecorder
		recordMessageReceiver: self
		selector: #startElement:prefix:uri:attributes:
		arguments:
			(OrderedCollection new
				addLast: aQualifiedName;
				addLast: aPrefix;
				addLast: aURI;
				addLast: aDictionary;
				yourself)