visiting - node tests
visitAttributeNodeTestForNamespaceURI: anAttributeNodeTestForNamespaceURI
	nodeTests addLast:
		(XPathAttributeNodeTestForNamespaceURI namespaceURI:
			anAttributeNodeTestForNamespaceURI namespaceURI).
	^ super visitAttributeNodeTestForNamespaceURI:
		anAttributeNodeTestForNamespaceURI.