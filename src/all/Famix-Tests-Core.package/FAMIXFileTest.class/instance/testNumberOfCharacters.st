helpers
testNumberOfCharacters
	| sourceFile file |
	sourceFile := FileSystem memory / 'test.txt'.
	sourceFile ensureCreateFile.
	sourceFile writeStreamDo: [ :stream | stream << 'This is a test of 32 characters.' ].
	file := self actualClass new
		name: 'test.txt';
		yourself.
	file stub fileReference willReturn: sourceFile.
	self assert: file numberOfCharacters equals: 32