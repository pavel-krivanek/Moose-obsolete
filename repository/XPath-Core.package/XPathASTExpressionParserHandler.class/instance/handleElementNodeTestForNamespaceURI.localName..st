handling - node tests
handleElementNodeTestForNamespaceURI: aURI localName: aLocalName
	self topOperatorNode nodeTest:
		(XPathASTElementNodeTestForNamespaceURIAndLocalNameNode
			namespaceURI: aURI
			localName: aLocalName)