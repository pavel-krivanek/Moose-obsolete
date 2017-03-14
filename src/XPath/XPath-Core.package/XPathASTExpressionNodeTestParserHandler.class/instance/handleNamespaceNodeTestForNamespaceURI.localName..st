handling
handleNamespaceNodeTestForNamespaceURI: aURI localName: aLocalName
	self startNodeTest.
	expressionParserHandler
		handleNamespaceNodeTestForNamespaceURI: aURI
		localName: aLocalName.