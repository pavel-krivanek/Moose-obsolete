accessing-properties
cache: selector initializer: aBlock
	^ self propertyAt: selector ifAbsentPut: [ aBlock cullValue: self entity ]