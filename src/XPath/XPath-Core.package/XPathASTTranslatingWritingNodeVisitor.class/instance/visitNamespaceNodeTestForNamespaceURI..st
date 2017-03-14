visiting - node tests
visitNamespaceNodeTestForNamespaceURI: aNamespaceNodeTestForNamespaceURI
	nodeTests addLast:
		(XPathNamespaceTestForNamespaceURI namespaceURI:
			aNamespaceNodeTestForNamespaceURI namespaceURI).
	^ super visitNamespaceNodeTestForNamespaceURI:
		aNamespaceNodeTestForNamespaceURI.