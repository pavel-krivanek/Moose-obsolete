tests
testStreamGetUpToLimitDecoding
	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testStreamGetUpToLimitDecoding.

	self tempFileManager newFileHandleDo: [:fileHandle | | readStream |
		self
			should: [
				fileHandle
					streamGetUpToLimit: nil
					decoding: true]
			raise: XMLFileException.

		self tempFileManager createFileWithContentsForHandle: fileHandle.

		readStream :=
			fileHandle
				streamGetUpToLimit: nil
				decoding: true.
		self
			assert: readStream isXMLConvertingStreamAdapter;
			assert: readStream upToEnd = self decodedFileContents.
		readStream close.
		readStream :=
			fileHandle
				streamGetUpToLimit: nil
				decoding: false.
		self
			deny: readStream isXMLConvertingStreamAdapter;
			assert: readStream upToEnd = self encodedFileContentsWithByteOrderMark.
		readStream close.

		readStream :=
			fileHandle
				streamGetUpToLimit: self encodedFileContentsWithByteOrderMark size
				decoding: true.
		self
			assert: readStream isXMLConvertingStreamAdapter;
			assert: readStream upToEnd = self decodedFileContents.
		readStream close.
		readStream :=
			fileHandle
				streamGetUpToLimit: self encodedFileContentsWithByteOrderMark size
				decoding: false.
		self
			deny: readStream isXMLConvertingStreamAdapter;
			assert: readStream upToEnd = self encodedFileContentsWithByteOrderMark.
		readStream close.

		self
			should: [
				fileHandle
					streamGetUpToLimit:
						self encodedFileContentsWithByteOrderMark size - 1
					decoding: true]
			raise: XMLLimitException.
		self
			should: [
				fileHandle
					streamGetUpToLimit:
						self encodedFileContentsWithByteOrderMark size - 1
					decoding: false]
			raise: XMLLimitException].