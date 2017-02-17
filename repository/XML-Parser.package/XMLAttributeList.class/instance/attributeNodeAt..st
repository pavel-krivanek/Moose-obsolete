accessing
attributeNodeAt: aName
	^ self
		attributeNodeAt: aName
		ifAbsent: [self defaultValue]