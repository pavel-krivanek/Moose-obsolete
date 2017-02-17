handling - node tests
handleAttributeNodeTestForNamespaceURI: aURI localName: aLocalName
	self topOperatorNode nodeTest:
		(XPathASTAttributeNodeTestForNamespaceURIAndLocalNameNode
			namespaceURI: aURI
			localName: aLocalName)