accessing
associationAtName: aQualifiedOrLocalName namespaceURI: aURI
	^ self
		associationAtName: aQualifiedOrLocalName
		namespaceURI: aURI
		ifAbsent: [nil]