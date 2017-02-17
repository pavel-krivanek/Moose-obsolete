handling - node tests
handleElementNodeTestForPrefix: aPrefix localName: aLocalName
	self topOperatorNode nodeTest:
		(XPathASTElementNodeTestForPrefixAndLocalNameNode
			prefix: aPrefix
			localName: aLocalName)