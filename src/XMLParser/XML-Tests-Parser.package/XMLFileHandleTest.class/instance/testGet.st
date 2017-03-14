tests
testGet
	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testGet.

	self tempFileManager newFileHandleDo: [:fileHandle |
		self
			should: [fileHandle get]
			raise: XMLFileException.

		self tempFileManager createFileWithContentsForHandle: fileHandle.
		self assert: fileHandle get = self decodedFileContents].