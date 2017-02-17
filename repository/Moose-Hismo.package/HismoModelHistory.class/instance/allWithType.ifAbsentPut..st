groups
allWithType: aMetaDesription ifAbsentPut: aBlock
	
	^self historyDictionary
		at: aMetaDesription name
		ifAbsentPut: aBlock