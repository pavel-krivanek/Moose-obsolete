tests
testParsingEncodedFile
	"This test creates/deletes a file so is skipped by default"
	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testParsingEncodedFile.

	self tempFileManager newFileHandleDo: [:fileHandle |
		self encodingNames do: [:encoding | | document documentFromFile |
			document := XMLDOMParser parse: self wideCharacterXML.
			fileHandle writeStreamDo: [:stream |
				stream
					streamConverter: encoding asXMLStreamConverter;
					nextPutAll: document printString].
			self
				shouldnt: [
					documentFromFile :=
						XMLDOMParser parseFileNamed: fileHandle path]
				raise: XMLFileException.
			self
				assert: documentFromFile encoding = '';
				assert: documentFromFile printString = document printString]].