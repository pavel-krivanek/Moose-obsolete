tests
testIsFile
	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testIsFile.

	self tempFileManager newFileHandleDo: [:fileHandle |
		self
			deny: fileHandle isFile;
			deny: self currentWorkingDirectoryFileHandle isFile.

		self tempFileManager createFileForHandle: fileHandle.
		self assert: fileHandle isFile].