visiting - node tests
visitAttributeNodeTest: anAttributeNodeTest
	^ self
		emitTypeTestFor: anAttributeNodeTest
		with: [self emit: $*]