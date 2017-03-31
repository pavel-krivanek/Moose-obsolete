handling - node tests
handleNamespaceNodeTestForName: aName
	self topOperatorNode nodeTest:
		(XPathASTNamespaceTestForNameNode name: aName)