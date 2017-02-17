removing
remove: aFunction ifAbsent: aBlock
	^ functionsByName
		removeKey: aFunction prototypeName
		ifAbsent: aBlock