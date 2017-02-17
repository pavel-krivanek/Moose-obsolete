handling - node tests
handleAttributeNodeTestForNamespaceURI: aURI
	self topOperatorNode nodeTest:
		(XPathASTAttributeNodeTestForNamespaceURINode namespaceURI: aURI)