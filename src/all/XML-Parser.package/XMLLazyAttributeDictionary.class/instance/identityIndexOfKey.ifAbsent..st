accessing
identityIndexOfKey: aKey ifAbsent: aBlock
	^ attributeDictionary
		identityIndexOfKey: aKey
		ifAbsent: aBlock