visiting - node tests
visitNamespaceNodeTestForName: aNamespaceNodeTestForName
	nodeTests addLast:
		(XPathNamespaceTestForName name:
			aNamespaceNodeTestForName name).
	^ super visitNamespaceNodeTestForName: aNamespaceNodeTestForName.