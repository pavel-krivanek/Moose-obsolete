handling - node tests
handlePINodeTestForName: aName
	self topOperatorNode nodeTest:
		(XPathASTPINodeTestForNameNode name: aName)