helpers
anchorForClassTest
	| file anchor |
	file := (FileSystem memory / 'test.java')
		ensureCreateFile;
		writeStreamDo: [ :s | s nextPutAll: self sourceCodeForTest ];
		yourself.
	anchor := self actualClass new
		startLine: 5;
		startColumn: 0;
		endLine: 21;
		endColumn: 2;
		yourself.
	anchor stub fileReference willReturn: file.
	^ anchor