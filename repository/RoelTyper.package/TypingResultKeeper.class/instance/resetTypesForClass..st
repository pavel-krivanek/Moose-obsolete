accessing
resetTypesForClass: aClass
	^typeResults
		removeKey: aClass
		ifAbsent: []