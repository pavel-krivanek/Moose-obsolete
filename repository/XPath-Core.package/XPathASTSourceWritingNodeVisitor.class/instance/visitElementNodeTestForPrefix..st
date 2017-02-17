visiting - node tests
visitElementNodeTestForPrefix: anElementNodeTestForPrefix
	^ self
		emitTypeTestFor: anElementNodeTestForPrefix
		with: [
			self emitAll:
				('*' qualifyWithXMLPrefix: anElementNodeTestForPrefix prefix)]