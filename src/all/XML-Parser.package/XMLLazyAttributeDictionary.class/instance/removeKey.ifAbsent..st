removing
removeKey: aKey ifAbsent: aBlock
	^ self copiedAttributeDictionary
		removeKey: aKey
		ifAbsent: aBlock