initialization
setStream: aStream readLimit: aReadLimit
	self stream: aStream.
	isExternal := true.
	currentPosition := 0.
	currentLineNumber := 1.
	currentLineStartPosition := 0.
	nestedStreams := OrderedCollection new: 5.
	readLimit := aReadLimit.
	normalizedLineEndingChar := LFCharacter.