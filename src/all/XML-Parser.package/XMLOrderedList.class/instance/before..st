accessing
before: anObject
	^ self before: anObject ifAbsent: [self defaultValue]