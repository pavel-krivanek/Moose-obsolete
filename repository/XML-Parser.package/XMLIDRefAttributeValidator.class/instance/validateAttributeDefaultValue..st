validating
validateAttributeDefaultValue: aDefaultValue
	aDefaultValue isXMLName
		ifFalse: [self errorInvalidDefaultAttributeValue: aDefaultValue]