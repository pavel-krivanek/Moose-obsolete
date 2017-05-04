accessing
invalidEncodedInputCollectionsWithBOM
	^ self invalidEncodedInputCollections collect: [:each |
		self streamConverterClass byteOrderMark, each]