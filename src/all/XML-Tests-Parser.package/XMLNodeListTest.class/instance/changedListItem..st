accessing
changedListItem: anObject
	^ (changedNodes ifNil: [changedNodes := IdentityDictionary new])
		at: anObject
		ifAbsentPut: [anObject copy]