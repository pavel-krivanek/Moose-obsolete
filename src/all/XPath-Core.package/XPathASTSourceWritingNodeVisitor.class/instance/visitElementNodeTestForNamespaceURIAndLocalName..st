visiting - node tests
visitElementNodeTestForNamespaceURIAndLocalName: anElementNodeTestForNamespaceURIAndLocalName
	^ self
		emitNodeTest: anElementNodeTestForNamespaceURIAndLocalName
		withNameTest:
			(anElementNodeTestForNamespaceURIAndLocalName localName 
				expandWithXMLNamespaceURI:
					anElementNodeTestForNamespaceURIAndLocalName namespaceURI)