handling
handleNamespaceNodeTestForPrefix: aPrefix localName: aLocalName
	self startNodeTest.
	expressionParserHandler
		handleNamespaceNodeTestForPrefix: aPrefix
		localName: aLocalName.