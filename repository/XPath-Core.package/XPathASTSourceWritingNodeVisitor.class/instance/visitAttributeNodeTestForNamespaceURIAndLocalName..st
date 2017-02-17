visiting - node tests
visitAttributeNodeTestForNamespaceURIAndLocalName: anAttributeNodeTestForNamespaceURIAndLocalName
	^ self
		emitTypeTestFor: anAttributeNodeTestForNamespaceURIAndLocalName
		with: [
			self emitAll:
				(anAttributeNodeTestForNamespaceURIAndLocalName localName 
					expandWithXMLNamespaceURI:
						anAttributeNodeTestForNamespaceURIAndLocalName namespaceURI)]