accessing
atName: aQualifiedOrLocalName namespaceURI: aURI ifAbsent: aBlock
	^ attributeDictionary
		atName: aQualifiedOrLocalName
		namespaceURI: aURI
		ifAbsent: aBlock