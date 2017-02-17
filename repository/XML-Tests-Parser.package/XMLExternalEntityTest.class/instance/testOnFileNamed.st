tests
testOnFileNamed
	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testOnFileNamed.

	self tempFileManager newFileHandleDo: [:fileHandle | | parser |
		self tempFileManager
			createFileWithContents: '<test/>'
			forHandle: fileHandle.
		self
			shouldnt: [parser := SAXHandler onFileNamed: fileHandle path]
			raise: XMLFileException.
		self
			assert: parser documentURI = fileHandle path;
			assert: parser documentURI asXMLURI isLocalURI].