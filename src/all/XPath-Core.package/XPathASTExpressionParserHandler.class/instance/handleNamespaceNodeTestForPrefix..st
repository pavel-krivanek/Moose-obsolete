handling - node tests
handleNamespaceNodeTestForPrefix: aPrefix
	self topOperatorNode nodeTest:
		(XPathASTNamespaceTestForPrefixNode prefix: aPrefix)