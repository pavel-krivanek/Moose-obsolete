helpers
testNumberOfCharactersWithCRLF
	| sourceFile file |
	sourceFile := FileSystem memory / 'test.txt'.
	sourceFile ensureCreateFile.
	sourceFile writeStreamDo: [ :stream | stream << (String crlf join: #('This' 'is' 'a' 'test' 'of' '38' 'characters.')) ].
	file := self actualClass new
		name: 'test.txt';
		yourself.
	file stub fileReference willReturn: sourceFile.
	self assert: file numberOfCharacters equals: 38