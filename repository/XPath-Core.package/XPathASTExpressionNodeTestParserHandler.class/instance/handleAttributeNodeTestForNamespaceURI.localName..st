handling
handleAttributeNodeTestForNamespaceURI: aURI localName: aLocalName
	self startNodeTest.
	expressionParserHandler
		handleAttributeNodeTestForNamespaceURI: aURI
		localName: aLocalName.