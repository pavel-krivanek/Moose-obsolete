visiting - node tests
visitAttributeNodeTestForName: anAttributeTestForName
	nodeTests addLast:
		(XPathAttributeNodeTestForName name:
			anAttributeTestForName name).
	^ super visitAttributeNodeTestForName: anAttributeTestForName.