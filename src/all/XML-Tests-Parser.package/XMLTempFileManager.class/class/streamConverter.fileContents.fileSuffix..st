instance creation
streamConverter: aStreamConverter fileContents: aString fileSuffix: aSuffix
	^ self new
		setStreamConverter: aStreamConverter
		fileContents: aString
		fileSuffix: aSuffix