visiting - node tests
visitAttributeNodeTestForNamespaceURIAndLocalName: anAttributeNodeTestForNamespaceURIAndLocalName
	^ self
		emitNodeTest: anAttributeNodeTestForNamespaceURIAndLocalName
		withNameTest:
			(anAttributeNodeTestForNamespaceURIAndLocalName localName 
				expandWithXMLNamespaceURI:
					anAttributeNodeTestForNamespaceURIAndLocalName namespaceURI)