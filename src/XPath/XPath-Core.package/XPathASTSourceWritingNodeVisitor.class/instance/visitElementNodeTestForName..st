visiting - node tests
visitElementNodeTestForName: anElementNodeTestForName
	^ self
		emitTypeTestFor: anElementNodeTestForName
		with: [self emitAll: anElementNodeTestForName name]