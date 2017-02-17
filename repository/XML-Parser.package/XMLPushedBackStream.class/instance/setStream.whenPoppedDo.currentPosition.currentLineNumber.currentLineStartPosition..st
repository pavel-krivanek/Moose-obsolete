initialization
setStream: aStream whenPoppedDo: aBlock currentPosition: aPosition currentLineNumber: aLineNumber currentLineStartPosition: aStartPosition
	stream := aStream.
	whenPoppedDo := aBlock.
	currentPosition := aPosition.
	currentLineNumber := aLineNumber.
	currentLineStartPosition := aStartPosition.