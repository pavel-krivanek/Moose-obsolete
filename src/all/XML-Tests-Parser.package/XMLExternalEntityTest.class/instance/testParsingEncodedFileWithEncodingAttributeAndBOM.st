tests
testParsingEncodedFileWithEncodingAttributeAndBOM
	"This test creates/deletes a file so is skipped by default"
	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testParsingEncodedFileWithEncodingAttributeAndBOM.

	self tempFileManager newFileHandleDo: [:fileHandle |
		self encodingNames do: [:encoding | | document documentFromFile |
			document := XMLDOMParser parse: self wideCharacterXML.
			document encoding: encoding.
			fileHandle writeStreamDo: [:stream |
				stream
					streamConverter: encoding asXMLStreamConverter;
					nextPutByteOrderMark;
					nextPutAll: document printString].
			self
				shouldnt: [
					documentFromFile :=
						XMLDOMParser parseFileNamed: fileHandle path]
				raise: XMLFileException.
			self
				assert: documentFromFile encoding = encoding;
				assert: documentFromFile printString = document printString]].