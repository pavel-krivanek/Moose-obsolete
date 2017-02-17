accessing
at: property ifAbsentPut: aBlock

	^ self at: property ifAbsent: [ self at: property put: aBlock value ]