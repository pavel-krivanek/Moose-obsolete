testing
isLocalURI
	^ self isFileURI
		or: [self isRelative
			and: [self hasHost not]]