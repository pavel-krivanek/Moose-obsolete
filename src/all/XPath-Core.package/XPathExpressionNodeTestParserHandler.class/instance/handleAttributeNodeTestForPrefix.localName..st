handling
handleAttributeNodeTestForPrefix: aPrefix localName: aLocalName
	self startNodeTest.
	expressionParserHandler
		handleAttributeNodeTestForPrefix: aPrefix
		localName: aLocalName.