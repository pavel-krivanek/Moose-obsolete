tests
testLineCount
	| file anchor |
	(file := FileSystem memory / 'test.txt')
		ensureCreateFile;
		writeStreamDo: [ :s | s << self sourceCodeForTest ].
	anchor := self anchorForClassTest.
	anchor stub fileReference willReturn: file.
	self assert: anchor lineCount equals: 17