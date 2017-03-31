accessing
attributeNodeAt: aName namespaceURI: aURI
	^ self
		attributeNodeAt: aName
		namespaceURI: aURI
		ifAbsent: [self defaultValue]