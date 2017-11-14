helpers
testNumberOfEmptyLinesOfText
	| sourceFile file |
	sourceFile := FileSystem memory / 'test.txt'.
	sourceFile ensureCreateFile.
	sourceFile
		writeStreamDo: [ :stream | 
			stream
				<<
					'This
is


a

test.' ].
	file := self actualClass new
		name: 'test.txt';
		yourself.
	file stub fileReference willReturn: sourceFile.
	self assert: file numberOfEmptyLinesOfText equals: 3