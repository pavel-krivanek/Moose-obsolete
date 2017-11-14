handling - content
startElement: aQualifiedName prefix: aPrefix uri: aURI localName: aLocalName attributes: anAttributeDictionary
	self pushElement:
		((self nodeFactory
			classForElement: aQualifiedName
			namespaceURI: aURI
			localName: aLocalName
			attributes: anAttributeDictionary) new
				setConfiguration: self configuration
				name: aQualifiedName
				localName: aLocalName
				attributes: anAttributeDictionary
				namespaceScope: currentScope)