accessing
classForElement: aQualifiedName namespaceURI: aURI
	^ self
		classForElement: aQualifiedName
		namespaceURI: aURI
		ifNone: [nil]