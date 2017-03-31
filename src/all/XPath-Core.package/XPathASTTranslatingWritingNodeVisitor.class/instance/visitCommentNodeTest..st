visiting - node tests
visitCommentNodeTest: aCommentNodeTest
	nodeTests addLast: XPathCommentNodeTest new.
	^ super visitCommentNodeTest: aCommentNodeTest.