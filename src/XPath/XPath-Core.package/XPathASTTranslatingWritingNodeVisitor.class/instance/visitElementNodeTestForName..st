visiting - node tests
visitElementNodeTestForName: anElementNodeTestForName
	nodeTests addLast:
		(XPathElementNodeTestForName name:
			anElementNodeTestForName name).
	^ super visitElementNodeTestForName: anElementNodeTestForName.