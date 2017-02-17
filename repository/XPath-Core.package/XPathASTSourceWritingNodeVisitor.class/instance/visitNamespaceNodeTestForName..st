visiting - node tests
visitNamespaceNodeTestForName: aNamespaceNodeTestForName
	^ self
		emitTypeTestFor: aNamespaceNodeTestForName
		with: [self emitAll: aNamespaceNodeTestForName name]