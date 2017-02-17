tests
testDelete
	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testDelete.

	self tempFileManager newFileHandleDo: [:fileHandle |
		self
			should: [fileHandle delete]
			raise: XMLFileException.

		self tempFileManager createFileForHandle: fileHandle.
		self
			assert: fileHandle delete == fileHandle;
			deny: fileHandle exists.

		self
			should: [fileHandle delete]
			raise: XMLFileException].