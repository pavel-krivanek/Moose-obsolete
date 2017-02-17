visiting - node tests
visitNamespaceNodeTestForLocalName: aNamespaceNodeTestForLocalName
	^ self
		emitTypeTestFor: aNamespaceNodeTestForLocalName
		with: [self emitAll: aNamespaceNodeTestForLocalName localName]