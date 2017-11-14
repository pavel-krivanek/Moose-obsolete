accessing
associationAtName: aKey namespaceURI: aURI ifAbsent: aBlock
	^ attributeDictionary
		associationAtName: aKey
		namespaceURI: aURI
		ifAbsent: aBlock