visiting - node tests
visitAttributeNodeTestForLocalName: anAttributeNodeTestForLocalName
	nodeTests addLast:
		(XPathAttributeNodeTestForLocalName localName:
			anAttributeNodeTestForLocalName localName).
	^ super visitAttributeNodeTestForLocalName: anAttributeNodeTestForLocalName.