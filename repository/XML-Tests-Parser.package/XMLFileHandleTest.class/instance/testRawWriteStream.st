tests
testRawWriteStream
	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testRawWriteStream.

	self tempFileManager newFileHandleDo: [:fileHandle |
		"evaluate twice to ensure it truncates existing contents when opening"
		2 timesRepeat: [| writeStream |
			writeStream := fileHandle rawWriteStream.
			self deny: writeStream isXMLConvertingStreamAdapter.

			writeStream
				nextPutAll: self encodedFileContentsWithByteOrderMark;
				close.
			self assert: fileHandle contents = self decodedFileContents]].