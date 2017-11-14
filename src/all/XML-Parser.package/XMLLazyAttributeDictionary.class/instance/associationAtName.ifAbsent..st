accessing
associationAtName: aKey ifAbsent: aBlock
	^ attributeDictionary
		associationAtName: aKey
		ifAbsent: aBlock