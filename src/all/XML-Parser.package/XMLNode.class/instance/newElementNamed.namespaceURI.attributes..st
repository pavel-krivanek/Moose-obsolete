instance creation
newElementNamed: aName namespaceURI: aURI attributes: anAssociationCollection
	^ (self nodeFactory
		classForElement: aName
		namespaceURI: aURI
		attributes: anAssociationCollection) new
			configuration: self configuration;
			name: aName namespaceURI: aURI;
			setAttributes: anAssociationCollection