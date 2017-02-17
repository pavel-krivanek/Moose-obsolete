validating
validateAttributeValue: aValue
	self unparsedEntityValidator
		validateEntityReference: aValue
		inAttribute: self attribute