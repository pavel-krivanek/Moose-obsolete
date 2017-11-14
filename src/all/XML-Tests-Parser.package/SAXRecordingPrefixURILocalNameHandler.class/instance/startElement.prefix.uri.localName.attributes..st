handling - content
startElement: aQualifiedName prefix: aPrefix uri: aURI localName: aLocalName attributes: anAttributeDictionary
	self
		recordMessageReceiver: self
		selector: #startElement:prefix:uri:localName:attributes:
		arguments:
			(OrderedCollection new
				addLast: aQualifiedName;
				addLast: aPrefix;
				addLast: aURI;
				addLast: aLocalName;
				addLast: anAttributeDictionary;
				yourself)