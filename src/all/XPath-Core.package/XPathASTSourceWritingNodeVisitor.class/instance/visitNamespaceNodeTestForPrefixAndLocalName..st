visiting - node tests
visitNamespaceNodeTestForPrefixAndLocalName: aNamespaceNodeTestForPrefixAndLocalName
	^ self
		emitNodeTest: aNamespaceNodeTestForPrefixAndLocalName
		withNameTest:
			(aNamespaceNodeTestForPrefixAndLocalName localName
				qualifyWithXMLPrefix:
					aNamespaceNodeTestForPrefixAndLocalName prefix)