accessing
cacheAt: name ifAbsentPut: aBlock
	^ propertyCache at: name ifAbsentPut: aBlock