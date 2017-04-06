visiting - node tests
visitElementNodeTestForNamespaceURI: anElementNodeTestForNamespaceURI
	^ self
		emitNodeTest: anElementNodeTestForNamespaceURI
		withNameTest:
			('*' expandWithXMLNamespaceURI:
				anElementNodeTestForNamespaceURI namespaceURI)