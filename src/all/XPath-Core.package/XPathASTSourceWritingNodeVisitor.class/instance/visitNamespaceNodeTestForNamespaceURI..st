visiting - node tests
visitNamespaceNodeTestForNamespaceURI: aNamespaceNodeTestForNamespaceURI
	^ self
		emitNodeTest: aNamespaceNodeTestForNamespaceURI
		withNameTest:
			('*' expandWithXMLNamespaceURI:
				aNamespaceNodeTestForNamespaceURI namespaceURI)