visiting - node tests
visitNamespaceNodeTestForNamespaceURIAndLocalName: aNamespaceNodeTestForNamespaceURIAndLocalName
	^ self
		emitNodeTest: aNamespaceNodeTestForNamespaceURIAndLocalName
		withNameTest:
			(aNamespaceNodeTestForNamespaceURIAndLocalName localName 
				expandWithXMLNamespaceURI:
					aNamespaceNodeTestForNamespaceURIAndLocalName namespaceURI)