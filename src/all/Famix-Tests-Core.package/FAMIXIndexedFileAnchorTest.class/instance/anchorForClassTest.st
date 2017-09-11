helpers
anchorForClassTest
	| file anchor |
	file := (FileSystem memory / 'test.java')
		ensureCreateFile;
		writeStreamDo: [ :s | s nextPutAll: self sourceCodeForTest ];
		yourself.
	anchor := self actualClass new
		startPos: 50;
		endPos: 253;
		yourself.
	anchor stub fileReference willReturn: file.
	^ anchor