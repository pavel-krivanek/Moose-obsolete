tests
testExists
	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testExists.

	self tempFileManager newFileHandleDo: [:fileHandle |
		self
			deny: fileHandle exists;
			assert: self currentWorkingDirectoryFileHandle exists.

		self tempFileManager createFileForHandle: fileHandle.
		self assert: fileHandle exists].