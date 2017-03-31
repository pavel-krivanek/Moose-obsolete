visiting - node tests
visitElementNodeTestForNamespaceURI: anElementNodeTestForNamespaceURI
	nodeTests addLast:
		(XPathElementNodeTestForNamespaceURI namespaceURI:
			anElementNodeTestForNamespaceURI namespaceURI).
	^ super visitElementNodeTestForNamespaceURI:
		anElementNodeTestForNamespaceURI.