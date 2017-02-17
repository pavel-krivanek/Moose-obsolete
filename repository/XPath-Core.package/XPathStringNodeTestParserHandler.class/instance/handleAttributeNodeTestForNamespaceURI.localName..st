handling
handleAttributeNodeTestForNamespaceURI: aURI localName: aLocalName
	self parsingResult:
		(XPathAttributeNodeTestForNamespaceURIAndLocalName
			namespaceURI: aURI
			localName: aLocalName)