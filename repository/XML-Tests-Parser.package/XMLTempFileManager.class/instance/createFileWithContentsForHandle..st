file creation
createFileWithContentsForHandle: aFileHandle
	self
		createFileWithContents: self fileContents
		forHandle: aFileHandle