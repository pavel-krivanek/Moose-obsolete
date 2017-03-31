tests
testReadStream
	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testReadStream.

	self tempFileManager newFileHandleDo: [:fileHandle | | readStream |
		self
			should: [fileHandle readStream]
			raise: XMLFileException.

		self tempFileManager createFileWithContentsForHandle: fileHandle.
		readStream := fileHandle readStream.
		self
			assert: readStream isXMLConvertingStreamAdapter;
			assert: readStream upToEnd = self decodedFileContents.
		readStream close].