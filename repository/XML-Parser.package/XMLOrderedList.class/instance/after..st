accessing
after: anObject
	^ self after: anObject ifAbsent: [self defaultValue]