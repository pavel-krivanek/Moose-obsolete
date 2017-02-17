visiting - node tests
visitNamespaceNodeTestForPrefixAndLocalName: aNamespaceNodeTestForPrefixAndLocalName
	^ self
		emitTypeTestFor: aNamespaceNodeTestForPrefixAndLocalName
		with: [
			self emitAll:
				(aNamespaceNodeTestForPrefixAndLocalName localName
					qualifyWithXMLPrefix:
						aNamespaceNodeTestForPrefixAndLocalName prefix)]