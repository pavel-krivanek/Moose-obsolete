testing
includesAttributeNode: aName namespaceURI: aURI
	self
		attributeNodeAt: aName
		namespaceURI: aURI
		ifAbsent: [^ false].
	^ true.