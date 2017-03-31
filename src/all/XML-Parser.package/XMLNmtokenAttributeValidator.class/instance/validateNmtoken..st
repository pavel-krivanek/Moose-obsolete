validating
validateNmtoken: aName
	aName isXMLNmtoken
		ifFalse: [self errorInvalidNmtoken: aName]