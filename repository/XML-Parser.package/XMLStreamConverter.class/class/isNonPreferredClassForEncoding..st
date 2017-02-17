testing
isNonPreferredClassForEncoding: anEncoding
	^ self isPreferredClass not
		and: [self canConvertEncoding: anEncoding]