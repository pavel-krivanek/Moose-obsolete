visiting - node tests
visitElementNodeTestForPrefixAndLocalName: anElementNodeTestForPrefixAndLocalName
	^ self
		emitTypeTestFor: anElementNodeTestForPrefixAndLocalName
		with: [
			self emitAll:
				(anElementNodeTestForPrefixAndLocalName localName
					qualifyWithXMLPrefix:
						anElementNodeTestForPrefixAndLocalName prefix)]