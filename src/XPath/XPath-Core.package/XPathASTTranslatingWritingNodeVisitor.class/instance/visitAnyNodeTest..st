visiting - node tests
visitAnyNodeTest: anAnyNodeTest
	nodeTests addLast: XPathAnyNodeTest new.
	^ super visitAnyNodeTest: anAnyNodeTest.