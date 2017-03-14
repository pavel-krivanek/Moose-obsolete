tests
testGetUpToLimitDecoding
	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testGetUpToLimitDecoding.

	self tempFileManager newFileHandleDo: [:fileHandle |
		self
			should: [
				fileHandle
					getUpToLimit: nil
					decoding: true]
			raise: XMLFileException.

		self tempFileManager createFileWithContentsForHandle: fileHandle.

		self assert:
			(fileHandle
				getUpToLimit: nil
				decoding: true) = self decodedFileContents.
		self assert:
			(fileHandle
				getUpToLimit: nil
				decoding: false) = self encodedFileContentsWithByteOrderMark.

		self assert:
			(fileHandle
				getUpToLimit: self encodedFileContentsWithByteOrderMark size
				decoding: true) = self decodedFileContents.
		self assert:
			(fileHandle
				getUpToLimit: self encodedFileContentsWithByteOrderMark size
				decoding: false) = self encodedFileContentsWithByteOrderMark.

		self
			should: [
				fileHandle
					getUpToLimit: self encodedFileContentsWithByteOrderMark size - 1
					decoding: true]
			raise: XMLLimitException.
		self
			should: [
				fileHandle
					getUpToLimit: self encodedFileContentsWithByteOrderMark size - 1
					decoding: false]
			raise: XMLLimitException].