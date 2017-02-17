visiting - node tests
visitNamespaceNodeTest: aNamespaceNodeTest
	^ self
		emitTypeTestFor: aNamespaceNodeTest
		with: [self emit: $*]