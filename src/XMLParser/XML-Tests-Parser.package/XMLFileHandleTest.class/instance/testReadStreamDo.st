tests
testReadStreamDo
	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testReadStreamDo.

	self tempFileManager newFileHandleDo: [:fileHandle | | contents |
		self
			should: [fileHandle readStreamDo: [:readStream | ]]
			raise: XMLFileException.

		self tempFileManager createFileWithContentsForHandle: fileHandle.
		fileHandle readStreamDo: [:readStream |
			self assert: readStream isXMLConvertingStreamAdapter.
			"saved to a temp to ensure the block was evaluated"
			contents := readStream upToEnd].
		self assert: contents = self decodedFileContents].