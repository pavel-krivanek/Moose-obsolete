visiting - node tests
visitNodeTest: aNodeTest
	self
		emitNodeTest: aNodeTest
		withNameTest: ''.
	^ super visitNodeTest: aNodeTest.