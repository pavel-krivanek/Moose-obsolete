tests
testSourceTextWithLf
	| file anchor |
	file := (FileSystem memory / 'test.java')
		ensureCreateFile;
		writeStreamDo: [ :s | s nextPutAll: (self sourceCodeForTest copyReplaceAll: String cr with: String lf) ];
		yourself.
	anchor := self anchorForClassTest
		startLine: 17;
		startColumn: 2;
		endLine: 19;
		endColumn: 3;
		yourself.
	anchor stub fileReference willReturn: file.
	self
		assert: anchor sourceText
		equals:
			('public int throwDice() {
		return 9;
	}' copyReplaceAll: String cr with: String lf)