tests
testLineCountWithCRLF
	| file anchor |
	(file := FileSystem memory / 'test.java')
		ensureCreateFile;
		writeStreamDo: [ :s | s << (self sourceCodeForTest copyReplaceAll: String cr with: String crlf) ].
	anchor := self actualClass new
		startPos: 54;
		endPos: 273;
		yourself.
	anchor stub fileReference willReturn: file.
	self assert: anchor lineCount equals: 17