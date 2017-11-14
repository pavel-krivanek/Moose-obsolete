accessing
cacheAt: name ifAbsent: aBlock
	^ propertyCache at: name ifAbsent: [ aBlock value ]