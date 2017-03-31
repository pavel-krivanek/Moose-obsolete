visiting - node tests
visitNodeTest: aNodeTest
	self
		emitTypeTestFor: aNodeTest
		with: nil.
	^ super visitNodeTest: aNodeTest.