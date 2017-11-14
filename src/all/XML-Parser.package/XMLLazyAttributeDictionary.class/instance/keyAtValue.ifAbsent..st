accessing
keyAtValue: anObject ifAbsent: aBlock
	^ attributeDictionary
		keyAtValue: anObject
		ifAbsent: aBlock