handling - node tests
handleNamespaceNodeTestForNamespaceURI: aURI localName: aLocalName
	self topOperatorNode nodeTest:
		(XPathASTNamespaceTestForNamespaceURIAndLocalNameNode
			namespaceURI: aURI
			localName: aLocalName)