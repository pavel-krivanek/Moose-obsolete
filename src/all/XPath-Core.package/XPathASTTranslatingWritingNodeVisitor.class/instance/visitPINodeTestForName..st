visiting - node tests
visitPINodeTestForName: aPINodeTestForName
	nodeTests addLast:
		(XPathPINodeTestForName name: aPINodeTestForName name).
	^ super visitPINodeTestForName: aPINodeTestForName.