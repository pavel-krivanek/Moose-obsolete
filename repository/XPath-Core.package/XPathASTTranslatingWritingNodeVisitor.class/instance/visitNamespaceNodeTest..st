visiting - node tests
visitNamespaceNodeTest: aNamespaceNodeTest
	nodeTests addLast: XPathNamespaceTest new.
	^ super visitNamespaceNodeTest: aNamespaceNodeTest.