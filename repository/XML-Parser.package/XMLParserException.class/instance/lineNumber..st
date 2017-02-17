accessing
lineNumber: aLineNumber
	lineNumber := aLineNumber.
	self
		messageTextAppend: aLineNumber
		withDescription: 'line'.