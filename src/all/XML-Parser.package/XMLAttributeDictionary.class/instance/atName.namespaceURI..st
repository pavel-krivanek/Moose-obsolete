accessing
atName: aQualifiedOrLocalName namespaceURI: aURI
	^ self
		atName: aQualifiedOrLocalName
		namespaceURI: aURI
		ifAbsent: ['']