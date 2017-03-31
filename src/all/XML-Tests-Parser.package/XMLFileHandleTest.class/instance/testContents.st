tests
testContents
	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testContents.

	self tempFileManager newFileHandleDo: [:fileHandle |
		self
			should: [fileHandle contents]
			raise: XMLFileException.
		self
			should: [self currentWorkingDirectoryFileHandle contents]
			raise: XMLFileException.

		self tempFileManager createFileWithContentsForHandle: fileHandle.
		self assert: fileHandle contents = self decodedFileContents].