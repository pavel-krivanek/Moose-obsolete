accessing
primaryEncodingName
	^ self basicEncodingNames
		at: 1
		ifAbsent: ['']