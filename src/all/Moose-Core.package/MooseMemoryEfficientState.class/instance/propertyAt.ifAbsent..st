accessing properties
propertyAt: name ifAbsent: aBlock
	^ propertyCache at: name ifAbsent: [ aBlock value ]