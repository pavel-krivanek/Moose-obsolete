copying
copyWithout: anObject
	^ self copy
		remove: anObject ifAbsent: [nil];
		yourself