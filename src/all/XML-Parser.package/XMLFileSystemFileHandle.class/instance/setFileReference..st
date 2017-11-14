initialization
setFileReference: aFileReference
	fileReference := aFileReference.
	self setPath: aFileReference fullName.