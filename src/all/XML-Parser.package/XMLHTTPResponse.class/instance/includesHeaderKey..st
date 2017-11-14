testing
includesHeaderKey: aKey
	self
		headerAt: aKey
		ifAbsent: [^ false].
	^ true.