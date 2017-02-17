handling - node tests
handleNamespaceNodeTestForLocalName: aLocalName
	self topOperatorNode nodeTest:
		(XPathASTNamespaceTestForLocalNameNode localName: aLocalName)