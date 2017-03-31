handling - node tests
handleAttributeNodeTestForLocalName: aLocalName
	self topOperatorNode nodeTest:
		(XPathASTAttributeNodeTestForLocalNameNode localName: aLocalName)