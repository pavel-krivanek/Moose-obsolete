accessing
classForElement: aQualifiedName namespaceURI: aURI localName: aLocalName attributes: anAssociationCollection
	^ elementClassMapper
		classForElement: aQualifiedName
		namespaceURI: aURI
		localName: aLocalName
		attributes: anAssociationCollection
		ifNone: [self elementClass]