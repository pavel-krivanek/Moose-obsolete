accessing
columnNumber: aColumnNumber
	columnNumber := aColumnNumber.
	self
		messageTextAppend: aColumnNumber
		withDescription: 'column'.