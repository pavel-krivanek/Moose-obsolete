visiting - node tests
visitTextNodeTest: aTextNodeTest
	nodeTests addLast: XPathTextNodeTest new.
	^ super visitTextNodeTest: aTextNodeTest.