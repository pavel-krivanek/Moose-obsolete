validating
validateXMLIDAttributeIn: aDictionary
	self hasAttributeValidators
		ifFalse: [self defaultXMLIDValidator validateAttributes: aDictionary]