visiting - node tests
visitAttributeNodeTestForNamespaceURI: anAttributeNodeTestForNamespaceURI
	^ self
		emitNodeTest: anAttributeNodeTestForNamespaceURI
		withNameTest:
			('*' expandWithXMLNamespaceURI:
				anAttributeNodeTestForNamespaceURI namespaceURI)