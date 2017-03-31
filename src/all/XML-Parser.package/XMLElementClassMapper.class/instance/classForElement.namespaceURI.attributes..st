accessing
classForElement: aQualifiedName namespaceURI: aURI attributes: anAssociationCollection
	^ self
		classForElement: aQualifiedName
		namespaceURI: aURI
		attributes: anAssociationCollection
		ifNone: [nil]