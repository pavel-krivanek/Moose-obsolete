tests
testWriteStream
	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testWriteStream.

	self tempFileManager newFileHandleDo: [:fileHandle |
		"evaluate twice to ensure it truncates existing contents when opening"
		2 timesRepeat: [| writeStream |
			writeStream := fileHandle writeStream.
			self
				assert: writeStream isXMLConvertingStreamAdapter;
				assert: writeStream hasDefaultStreamConverter.

			writeStream
				streamConverter: self streamConverterClass new;
				nextPutByteOrderMark;
				nextPutAll: self decodedFileContents;
				close.
			self assert: fileHandle contents = self decodedFileContents]].