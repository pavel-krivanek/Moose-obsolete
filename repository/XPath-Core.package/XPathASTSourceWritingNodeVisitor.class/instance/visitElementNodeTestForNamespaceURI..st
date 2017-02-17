visiting - node tests
visitElementNodeTestForNamespaceURI: anElementNodeTestForNamespaceURI
	^ self
		emitTypeTestFor: anElementNodeTestForNamespaceURI
		with: [
			self emitAll:
				('*' expandWithXMLNamespaceURI:
					anElementNodeTestForNamespaceURI namespaceURI)]