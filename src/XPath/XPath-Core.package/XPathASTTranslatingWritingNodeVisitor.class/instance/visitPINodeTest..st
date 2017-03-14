visiting - node tests
visitPINodeTest: aPINodeTest
	nodeTests addLast: XPathPINodeTest new.
	^ super visitPINodeTest: aPINodeTest.