handling - content
startElement: aQualifiedName prefix: aPrefix uri: aURI localName: aLocalName attributes: aDictionary
	self pushElement:
		((self nodeFactory
			classForElement: aQualifiedName
			namespaceURI: aURI
			localName: aLocalName
			attributes: aDictionary) new
				setConfiguration: self configuration
				name: aQualifiedName
				localName: aLocalName
				attributes: aDictionary)