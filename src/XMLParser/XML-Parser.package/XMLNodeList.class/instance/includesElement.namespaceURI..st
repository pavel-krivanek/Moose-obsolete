testing
includesElement: aName namespaceURI: aURI
	self
		elementAt: aName
		namespaceURI: aURI
		ifAbsent: [^ false].
	^ true.