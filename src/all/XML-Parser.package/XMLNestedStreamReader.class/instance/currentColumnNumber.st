accessing
currentColumnNumber
	"recording the start pos. of the line and subtracting it from the current
	pos. is faster than an explicit column var that would need to be incremented
	each time through #next/#skipSeparators"
	^ currentLineStartPosition
		ifNotNil: [currentPosition - currentLineStartPosition]