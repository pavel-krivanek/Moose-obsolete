accessing-derived
cachedAllDescendants
	^ self	
		propertyNamed: #allDescendants
		ifAbsentPut: [ self allDescendants ]