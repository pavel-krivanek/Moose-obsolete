validating
validatePCData: aString
	self hasCurrentElementValidator
		ifTrue: [self currentElementValidator validatePCData: aString]