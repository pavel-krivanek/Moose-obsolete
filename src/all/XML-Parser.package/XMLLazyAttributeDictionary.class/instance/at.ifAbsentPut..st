accessing
at: aKey ifAbsentPut: aBlock
	^ self copiedAttributeDictionary
		at: aKey
		ifAbsentPut: aBlock