validating
validateComment: aString
	self hasCurrentElementValidator
		ifTrue: [self currentElementValidator validateComment: aString]