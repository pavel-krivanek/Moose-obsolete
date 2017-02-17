instance creation
newElementNamed: aName namespaceURI: aURI attributes: anAssociationCollection
	^ (self
		classForElement: aName
		namespaceURI: aURI
		attributes: anAssociationCollection)
			name: aName
			namespaceURI: aURI
			attributes: anAssociationCollection