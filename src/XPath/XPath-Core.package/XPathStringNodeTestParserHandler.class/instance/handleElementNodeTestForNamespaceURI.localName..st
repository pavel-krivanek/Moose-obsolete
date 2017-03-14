handling
handleElementNodeTestForNamespaceURI: aURI localName: aLocalName
	self parsingResult:
		(XPathElementNodeTestForNamespaceURIAndLocalName
			namespaceURI: aURI
			localName: aLocalName)