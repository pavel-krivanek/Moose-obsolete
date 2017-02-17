accessing
defaultReadLimit
	^ DefaultReadLimit
		ifNil: [DefaultReadLimit := 10000000]