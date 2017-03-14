accessing
classForElement: aQualifiedName namespaceURI: aURI attributes: anAssociationCollection
	^ elementClassMapper
		classForElement: aQualifiedName
		namespaceURI: aURI
		attributes: anAssociationCollection
		ifNone: [self elementClass]