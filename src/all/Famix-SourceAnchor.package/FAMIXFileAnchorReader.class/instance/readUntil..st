reading
readUntil: endLine
	[ lineCount < endLine ]
		whileTrue: [ (char := readStream next) isCr
				ifTrue: [ self increment.
					writeStream nextPut: char.
					(char := readStream next)
						ifNotNil: [ char isLf
								ifTrue: [ writeStream nextPut: char ]
								ifFalse: [ readStream oneBack ] ] ]
				ifFalse: [ char isLf
						ifTrue: [ self increment ].
					writeStream nextPut: char ] ].
	self readUntilEndColumn