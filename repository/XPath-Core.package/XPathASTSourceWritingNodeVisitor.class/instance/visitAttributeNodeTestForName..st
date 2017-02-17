visiting - node tests
visitAttributeNodeTestForName: anAttributeNodeTestForName
	^ self
		emitTypeTestFor: anAttributeNodeTestForName
		with: [self emitAll: anAttributeNodeTestForName name]