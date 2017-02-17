accessing
atLast: anIndexFromEnd
	^ self atLast: anIndexFromEnd ifAbsent: [self defaultValue]