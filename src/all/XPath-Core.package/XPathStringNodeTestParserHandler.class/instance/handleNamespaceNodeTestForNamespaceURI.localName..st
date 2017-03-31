handling
handleNamespaceNodeTestForNamespaceURI: aURI localName: aLocalName
	self parsingResult:
		(XPathNamespaceTestForNamespaceURIAndLocalName
			namespaceURI: aURI
			localName: aLocalName)