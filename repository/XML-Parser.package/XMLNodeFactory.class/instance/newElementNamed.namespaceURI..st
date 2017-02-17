instance creation
newElementNamed: aName namespaceURI: aURI
	^ (self
		classForElement: aName
		namespaceURI: aURI)
			name: aName
			namespaceURI: aURI