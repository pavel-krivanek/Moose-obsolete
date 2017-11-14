accessing
associationAtName: aQualifiedOrLocalName
	^ self
		associationAtName: aQualifiedOrLocalName
		ifAbsent: [nil]