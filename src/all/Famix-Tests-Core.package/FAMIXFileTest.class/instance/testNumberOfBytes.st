helpers
testNumberOfBytes
	| sourceFile file |
	sourceFile := FileSystem memory / 'test.txt'.
	sourceFile ensureCreateFile.
	sourceFile writeStreamDo: [ :stream | stream << 'This is a test of 27 bytes.' ].
	file := self actualClass new
		name: 'test.txt';
		yourself.
	file stub fileReference willReturn: sourceFile.
	self assert: file numberOfBytes equals: 27