accessing
typesForClass: aClass
	^typeResults
		at: aClass
		ifAbsentPut: [self calculateTypesForClass: aClass]