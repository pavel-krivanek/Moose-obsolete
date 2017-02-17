parsing
parse
	| validator |
	
	validator :=
		self attributeValidatorClassForType
			element: element
			attribute: attribute
			defaultValidator: defaultValidator.

	enumerationListParserClass
		ifNotNil: [
			validator allowedValues:
				(enumerationListParserClass on: type) parse].

	^ validator.