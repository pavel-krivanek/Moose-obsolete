instance creation
newElementNamed: aName namespaceURI: aURI
	^ (self nodeFactory
		classForElement: aName
		namespaceURI: aURI) new
			configuration: self configuration;
			name: aName namespaceURI: aURI