visiting - node tests
visitNamespaceNodeTestForNamespaceURIAndLocalName: aNamespaceNodeTestForNamespaceURIAndLocalName
	^ self
		emitTypeTestFor: aNamespaceNodeTestForNamespaceURIAndLocalName
		with: [
			self emitAll:
				(aNamespaceNodeTestForNamespaceURIAndLocalName localName 
					expandWithXMLNamespaceURI:
						aNamespaceNodeTestForNamespaceURIAndLocalName namespaceURI)]