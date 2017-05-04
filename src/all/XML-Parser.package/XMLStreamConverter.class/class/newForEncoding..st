instance creation
newForEncoding: anEncodingName
	(self classForEncoding: anEncodingName)
		ifNil: [^ self null]
		ifNotNil: [:converterClass |
			^ converterClass new initializeForEncoding: anEncodingName]