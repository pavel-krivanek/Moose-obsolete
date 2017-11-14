accessing
at: aKey put: aValue
	^ self copiedAttributeDictionary
		at: aKey
		put: aValue