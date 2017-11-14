accessing
associationAt: aKey ifAbsent: aBlock
	^ attributeDictionary
		associationAt: aKey
		ifAbsent: aBlock