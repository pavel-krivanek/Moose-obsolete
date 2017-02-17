visiting - node tests
visitAttributeNodeTestForPrefix: anAttributeNodeTestForPrefix
	^ self
		emitTypeTestFor: anAttributeNodeTestForPrefix
		with: [
			self emitAll:
				('*' qualifyWithXMLPrefix: anAttributeNodeTestForPrefix prefix)]