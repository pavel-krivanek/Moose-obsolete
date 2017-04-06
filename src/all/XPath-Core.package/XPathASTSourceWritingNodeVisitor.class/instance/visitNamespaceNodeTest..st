visiting - node tests
visitNamespaceNodeTest: aNamespaceNodeTest
	^ self
		emitNodeTest: aNamespaceNodeTest
		withNameTest: '*'