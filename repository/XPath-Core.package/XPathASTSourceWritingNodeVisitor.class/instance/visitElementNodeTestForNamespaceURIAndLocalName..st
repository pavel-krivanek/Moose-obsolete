visiting - node tests
visitElementNodeTestForNamespaceURIAndLocalName: anElementNodeTestForNamespaceURIAndLocalName
	^ self
		emitTypeTestFor: anElementNodeTestForNamespaceURIAndLocalName
		with: [
			self emitAll:
				(anElementNodeTestForNamespaceURIAndLocalName localName 
					expandWithXMLNamespaceURI:
						anElementNodeTestForNamespaceURIAndLocalName namespaceURI)]