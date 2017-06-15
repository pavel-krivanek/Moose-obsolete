tests
testLineCountWithCRLF
	| file anchor |
	(file := FileSystem memory / 'test.txt')
		ensureCreateFile;
		writeStreamDo: [ :s | s << (self sourceCodeForTest copyReplaceAll: String cr with: String crlf) ].
	anchor := self anchorForClassTest.
	anchor stub fileReference willReturn: file.
	self assert: anchor lineCount equals: 17