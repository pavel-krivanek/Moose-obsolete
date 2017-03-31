handling - node tests
handleNamespaceNodeTestForNamespaceURI: aURI
	self topOperatorNode nodeTest:
		(XPathASTNamespaceTestForNamespaceURINode namespaceURI: aURI)