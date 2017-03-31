visiting - node tests
visitElementNodeTestForLocalName: anElementNodeTestForLocalName
	nodeTests addLast:
		(XPathElementNodeTestForLocalName localName:
			anElementNodeTestForLocalName localName).
	^ super visitElementNodeTestForLocalName: anElementNodeTestForLocalName.