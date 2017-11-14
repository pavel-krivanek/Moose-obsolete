accessing
at: aKey ifAbsent: aBlock
	^ attributeDictionary
		at: aKey
		ifAbsent: aBlock