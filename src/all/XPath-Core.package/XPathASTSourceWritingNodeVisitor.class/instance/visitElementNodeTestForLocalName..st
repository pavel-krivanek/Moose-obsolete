visiting - node tests
visitElementNodeTestForLocalName: anElementNodeTestForLocalName
	^ self
		emitNodeTest: anElementNodeTestForLocalName
		withNameTest: anElementNodeTestForLocalName localName