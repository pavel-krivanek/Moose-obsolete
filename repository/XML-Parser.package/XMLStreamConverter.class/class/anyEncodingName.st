accessing
anyEncodingName
	^ self basicEncodingNames
		at: 1
		ifAbsent: ['']