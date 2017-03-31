validating
validateAttributeValue: aValue
	self
		spaceSeparatedListValuesIn: aValue
		do: [:each |
			self elementIDValidator
				validateIDReference: each
				inAttribute: self attribute]