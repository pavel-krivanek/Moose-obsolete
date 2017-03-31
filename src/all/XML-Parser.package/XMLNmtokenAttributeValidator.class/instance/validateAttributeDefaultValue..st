validating
validateAttributeDefaultValue: aDefaultValue
	aDefaultValue isXMLNmtoken
		ifFalse: [self errorInvalidDefaultAttributeValue: aDefaultValue]