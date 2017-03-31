visiting - node tests
visitElementNodeTestForLocalName: anElementNodeTestForLocalName
	^ self
		emitTypeTestFor: anElementNodeTestForLocalName
		with: [self emitAll: anElementNodeTestForLocalName localName]