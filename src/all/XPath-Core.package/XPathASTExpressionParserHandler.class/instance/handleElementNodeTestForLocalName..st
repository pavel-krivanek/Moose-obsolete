handling - node tests
handleElementNodeTestForLocalName: aLocalName
	self topOperatorNode nodeTest:
		(XPathASTElementNodeTestForLocalNameNode localName: aLocalName)