accessing
lastElement
	^ self cachedElements
		at: self cachedElements size
		ifAbsent: [self defaultValue]