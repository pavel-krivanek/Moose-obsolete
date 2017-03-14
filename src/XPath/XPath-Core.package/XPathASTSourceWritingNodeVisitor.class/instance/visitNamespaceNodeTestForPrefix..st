visiting - node tests
visitNamespaceNodeTestForPrefix: aNamespaceNodeTestForPrefix
	^ self
		emitTypeTestFor: aNamespaceNodeTestForPrefix
		with: [
			self emitAll:
				('*' qualifyWithXMLPrefix: aNamespaceNodeTestForPrefix prefix)]