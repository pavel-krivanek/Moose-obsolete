validating
validateStartTag: anElement
	(self allowedContent includes: anElement)
		ifFalse: [self errorUnexpectedElement: anElement]
	