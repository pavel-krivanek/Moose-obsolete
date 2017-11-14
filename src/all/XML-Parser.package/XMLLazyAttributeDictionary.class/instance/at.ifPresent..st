accessing
at: aKey ifPresent: aBlock
	^ attributeDictionary
		at: aKey
		ifPresent: aBlock