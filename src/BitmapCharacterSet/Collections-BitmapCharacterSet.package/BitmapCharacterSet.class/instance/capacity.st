accessing
capacity
	^ byteCharacters size +
		(wideCharacters
			ifNil: [0]
			ifNotNil: [wideCharacters size * 8]).