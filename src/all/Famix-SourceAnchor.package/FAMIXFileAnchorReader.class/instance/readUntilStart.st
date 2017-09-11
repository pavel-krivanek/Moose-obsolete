reading
readUntilStart
	[ lineCount < self startLine ]
		whileTrue: [ (char := readStream next) isCr
				ifTrue: [ self manageNewLineReturnBeforeStartFromCr: true.
					(char := readStream next) isLf
						ifFalse: [ readStream oneBack ] ]
				ifFalse: [ char isLf
						ifTrue: [ self manageNewLineReturnBeforeStartFromCr: false ] ] ]