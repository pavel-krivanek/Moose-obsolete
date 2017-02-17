visiting - node tests
visitAttributeNodeTest: anAttributeNodeTest
	nodeTests addLast: XPathAttributeNodeTest new.
	^ super visitAttributeNodeTest: anAttributeNodeTest.