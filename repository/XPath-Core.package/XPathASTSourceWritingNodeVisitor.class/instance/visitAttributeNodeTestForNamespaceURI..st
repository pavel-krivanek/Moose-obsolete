visiting - node tests
visitAttributeNodeTestForNamespaceURI: anAttributeNodeTestForNamespaceURI
	^ self
		emitTypeTestFor: anAttributeNodeTestForNamespaceURI
		with: [
			self emitAll:
				('*' expandWithXMLNamespaceURI:
					anAttributeNodeTestForNamespaceURI namespaceURI)]