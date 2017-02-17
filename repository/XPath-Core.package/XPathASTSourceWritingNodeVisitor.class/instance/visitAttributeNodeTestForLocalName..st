visiting - node tests
visitAttributeNodeTestForLocalName: anAttributeNodeTestForLocalName
	^ self
		emitTypeTestFor: anAttributeNodeTestForLocalName
		with: [self emitAll: anAttributeNodeTestForLocalName localName]