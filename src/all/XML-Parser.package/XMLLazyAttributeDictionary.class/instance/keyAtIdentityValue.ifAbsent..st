accessing
keyAtIdentityValue: aValue ifAbsent: aBlock
	^ attributeDictionary
		keyAtIdentityValue: aValue
		ifAbsent: aBlock