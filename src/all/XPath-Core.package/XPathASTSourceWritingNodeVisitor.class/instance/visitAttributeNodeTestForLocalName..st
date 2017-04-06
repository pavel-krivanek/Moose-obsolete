visiting - node tests
visitAttributeNodeTestForLocalName: anAttributeNodeTestForLocalName
	^ self
		emitNodeTest: anAttributeNodeTestForLocalName
		withNameTest: anAttributeNodeTestForLocalName localName