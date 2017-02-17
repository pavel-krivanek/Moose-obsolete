tests
testWriteStreamDo
	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testWriteStreamDo.

	self tempFileManager newFileHandleDo: [:fileHandle |
		"evaluate twice to ensure it truncates existing contents when opening"
		2 timesRepeat: [
			fileHandle writeStreamDo: [:writeStream |
				self
					assert: writeStream isXMLConvertingStreamAdapter;
					assert: writeStream hasDefaultStreamConverter.

				writeStream
					streamConverter: self streamConverterClass new;
					nextPutByteOrderMark;
					nextPutAll: self decodedFileContents].
			self assert: fileHandle contents = self decodedFileContents]].