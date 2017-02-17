testing
queryIncludesKey: aKey
	self
		queryAt: aKey
		ifAbsent: [^ false].
	^ true.