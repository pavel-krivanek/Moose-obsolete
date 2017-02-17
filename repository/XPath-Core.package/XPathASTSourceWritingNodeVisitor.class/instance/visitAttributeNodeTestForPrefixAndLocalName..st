visiting - node tests
visitAttributeNodeTestForPrefixAndLocalName: anAttributeNodeTestForPrefixAndLocalName
	^ self
		emitTypeTestFor: anAttributeNodeTestForPrefixAndLocalName
		with: [
			self emitAll:
				(anAttributeNodeTestForPrefixAndLocalName localName
					qualifyWithXMLPrefix:
						anAttributeNodeTestForPrefixAndLocalName prefix)]