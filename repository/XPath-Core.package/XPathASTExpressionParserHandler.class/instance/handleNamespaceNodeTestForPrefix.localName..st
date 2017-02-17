handling - node tests
handleNamespaceNodeTestForPrefix: aPrefix localName: aLocalName
	self topOperatorNode nodeTest:
		(XPathASTNamespaceTestForPrefixAndLocalNameNode
			prefix: aPrefix
			localName: aLocalName)