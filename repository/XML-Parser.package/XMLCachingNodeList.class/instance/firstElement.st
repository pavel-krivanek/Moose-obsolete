accessing
firstElement
	^ self cachedElements
		at: 1
		ifAbsent: [self defaultValue]