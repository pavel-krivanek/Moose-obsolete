tests
testStreamGet
	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testStreamGet.

	self tempFileManager newFileHandleDo: [:fileHandle | | readStream |
		self
			should: [fileHandle streamGet]
			raise: XMLFileException.

		self tempFileManager createFileWithContentsForHandle: fileHandle.
		readStream := fileHandle streamGet.
		self
			assert: readStream isXMLConvertingStreamAdapter;
			assert: readStream upToEnd = self decodedFileContents.
		readStream close].