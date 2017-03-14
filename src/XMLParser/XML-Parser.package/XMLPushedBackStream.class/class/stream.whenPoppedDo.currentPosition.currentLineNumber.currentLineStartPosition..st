instance creation
stream: aStream whenPoppedDo: aBlock currentPosition: aPosition currentLineNumber: aLineNumber currentLineStartPosition: aStartPosition
	^ self new
		setStream: aStream
		whenPoppedDo: aBlock
		currentPosition: aPosition
		currentLineNumber: aLineNumber
		currentLineStartPosition: aStartPosition