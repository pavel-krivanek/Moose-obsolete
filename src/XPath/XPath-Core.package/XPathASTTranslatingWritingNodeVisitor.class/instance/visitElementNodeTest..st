visiting - node tests
visitElementNodeTest: anElementNodeTest
	nodeTests addLast: XPathElementNodeTest new.
	^ super visitElementNodeTest: anElementNodeTest.