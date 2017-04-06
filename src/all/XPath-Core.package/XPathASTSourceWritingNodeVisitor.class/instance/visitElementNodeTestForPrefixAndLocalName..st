visiting - node tests
visitElementNodeTestForPrefixAndLocalName: anElementNodeTestForPrefixAndLocalName
	^ self
		emitNodeTest: anElementNodeTestForPrefixAndLocalName
		withNameTest:
			(anElementNodeTestForPrefixAndLocalName localName
				qualifyWithXMLPrefix:
					anElementNodeTestForPrefixAndLocalName prefix)