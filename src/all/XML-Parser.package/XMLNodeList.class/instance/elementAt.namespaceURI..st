accessing
elementAt: aName namespaceURI: aURI
	^ self
		elementAt: aName
		namespaceURI: aURI
		ifAbsent: [self defaultValue]