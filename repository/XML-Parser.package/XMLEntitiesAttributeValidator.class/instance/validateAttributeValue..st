validating
validateAttributeValue: aValue
	self
		spaceSeparatedListValuesIn: aValue
		do: [:each |
			self unparsedEntityValidator
				validateEntityReference: each
				inAttribute: self attribute]