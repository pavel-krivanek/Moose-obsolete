accessing
classForElement: aQualifiedName namespaceURI: aURI
	^ elementClassMapper
		classForElement: aQualifiedName
		namespaceURI: aURI
		ifNone: [self elementClass]