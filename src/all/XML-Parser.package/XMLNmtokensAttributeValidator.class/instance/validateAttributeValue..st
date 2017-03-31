validating
validateAttributeValue: aValue
	self
		spaceSeparatedListValuesIn: aValue
		do: [:each | self validateNmtoken: each]