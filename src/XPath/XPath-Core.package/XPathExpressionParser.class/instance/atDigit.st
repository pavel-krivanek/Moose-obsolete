testing
atDigit
	readStream peek
		ifNil: [^ false]
		ifNotNil: [:nextChar | ^ nextChar isDigit]