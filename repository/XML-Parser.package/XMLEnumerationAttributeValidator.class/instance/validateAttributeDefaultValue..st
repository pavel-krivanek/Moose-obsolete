validating
validateAttributeDefaultValue: aDefaultValue
	(self allowedValues includes: aDefaultValue)
		ifFalse: [self errorInvalidDefaultAttributeValue: aDefaultValue]