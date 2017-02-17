handling - node tests
handleAttributeNodeTestForPrefix: aPrefix localName: aLocalName
	self topOperatorNode nodeTest:
		(XPathASTAttributeNodeTestForPrefixAndLocalNameNode
			prefix: aPrefix
			localName: aLocalName)