handling - node tests
handleElementNodeTestForNamespaceURI: aURI
	self topOperatorNode nodeTest:
		(XPathASTElementNodeTestForNamespaceURINode namespaceURI: aURI)