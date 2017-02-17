validating
validateEndTag: anElement
	self hasCurrentElementValidator
		ifTrue: [
			self currentElementValidator atEnd
				ifFalse: [self errorUnexpectEndOfElement: anElement].
			self elementValidatorStack removeLast]