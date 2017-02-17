visiting - node tests
visitElementNodeTest: anElementNodeTest
	^ self
		emitTypeTestFor: anElementNodeTest
		with: [self emit: $*]