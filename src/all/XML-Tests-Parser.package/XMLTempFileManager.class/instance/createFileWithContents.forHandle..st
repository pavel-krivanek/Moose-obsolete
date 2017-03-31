file creation
createFileWithContents: aString forHandle: aFileHandle
	aFileHandle writeStream
		streamConverter: self streamConverter;
		nextPutByteOrderMark;
		nextPutAll: aString;
		close