properties
propertyNamed: annotationName ifAbsentPut: blockValue 

	^ self properties
		at: annotationName
		ifAbsentPut: blockValue