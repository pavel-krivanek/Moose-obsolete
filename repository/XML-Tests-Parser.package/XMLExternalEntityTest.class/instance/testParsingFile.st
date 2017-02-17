tests
testParsingFile
	"This test creates/deletes a file so is skipped by default"
	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testParsingFile.

	self tempFileManager newFileHandleDo: [:fileHandle | | document |
		self
			should: [XMLDOMParser parseFileNamed: fileHandle path]
			raise: XMLFileException.

		self tempFileManager
			createFileWithContents: self musicXMLDocument
			forHandle: fileHandle.
		self
			shouldnt: [document := XMLDOMParser parseFileNamed: fileHandle path]
			raise: XMLFileException.
		self assert: (document root isNamed: 'score-partwise')].