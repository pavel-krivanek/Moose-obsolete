visiting - node tests
visitPINodeTestForName: aPINodeTestForName
	^ self
		emitTypeTestFor: aPINodeTestForName
		with: [self emitAll: aPINodeTestForName name]