visiting - node tests
visitNamespaceNodeTestForNamespaceURI: aNamespaceNodeTestForNamespaceURI
	^ self
		emitTypeTestFor: aNamespaceNodeTestForNamespaceURI
		with: [
			self emitAll:
				('*' expandWithXMLNamespaceURI:
					aNamespaceNodeTestForNamespaceURI namespaceURI)]