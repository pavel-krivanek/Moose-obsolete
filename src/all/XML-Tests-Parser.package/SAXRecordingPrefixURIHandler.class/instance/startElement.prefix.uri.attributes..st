handling - content
startElement: aQualifiedName prefix: aPrefix uri: aURI attributes: anAttributeDictionary
	self
		recordMessageReceiver: self
		selector: #startElement:prefix:uri:attributes:
		arguments:
			(OrderedCollection new
				addLast: aQualifiedName;
				addLast: aPrefix;
				addLast: aURI;
				addLast: anAttributeDictionary;
				yourself)