tests
testSize
	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testSize.

	self tempFileManager newFileHandleDo: [:fileHandle |
		self
			should: [fileHandle size]
			raise: XMLFileException.

		self tempFileManager createFileWithContentsForHandle: fileHandle.
		self assert:
			fileHandle size >=
				self encodedFileContentsWithByteOrderMark size].