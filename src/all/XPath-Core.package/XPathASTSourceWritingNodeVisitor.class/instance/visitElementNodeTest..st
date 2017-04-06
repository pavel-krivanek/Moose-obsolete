visiting - node tests
visitElementNodeTest: anElementNodeTest
	^ self
		emitNodeTest: anElementNodeTest
		withNameTest: '*'