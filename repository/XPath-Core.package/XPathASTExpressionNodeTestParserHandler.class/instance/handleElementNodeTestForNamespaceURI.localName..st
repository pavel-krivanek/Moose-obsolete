handling
handleElementNodeTestForNamespaceURI: aURI localName: aLocalName
	self startNodeTest.
	expressionParserHandler
		handleElementNodeTestForNamespaceURI: aURI
		localName: aLocalName.