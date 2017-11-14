accessing
indexOfKey: aKey ifAbsent: aBlock
	^ attributeDictionary
		indexOfKey: aKey
		ifAbsent: aBlock