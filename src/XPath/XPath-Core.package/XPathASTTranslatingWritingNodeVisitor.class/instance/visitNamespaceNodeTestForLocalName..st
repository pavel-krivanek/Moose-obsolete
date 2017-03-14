visiting - node tests
visitNamespaceNodeTestForLocalName: aNamespaceNodeTestForLocalName
	nodeTests addLast:
		(XPathNamespaceTestForLocalName localName:
			aNamespaceNodeTestForLocalName localName).
	^ super visitNamespaceNodeTestForLocalName: aNamespaceNodeTestForLocalName.