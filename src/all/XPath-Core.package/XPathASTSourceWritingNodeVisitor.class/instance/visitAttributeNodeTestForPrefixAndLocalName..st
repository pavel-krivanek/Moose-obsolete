visiting - node tests
visitAttributeNodeTestForPrefixAndLocalName: anAttributeNodeTestForPrefixAndLocalName
	^ self
		emitNodeTest: anAttributeNodeTestForPrefixAndLocalName
		withNameTest:
			(anAttributeNodeTestForPrefixAndLocalName localName
				qualifyWithXMLPrefix:
					anAttributeNodeTestForPrefixAndLocalName prefix)