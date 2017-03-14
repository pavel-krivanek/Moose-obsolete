accessing
tempFileManager
	^ tempFileManager ifNil: [tempFileManager := XMLTempFileManager new]