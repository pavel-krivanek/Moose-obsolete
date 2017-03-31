enumerating
attributeNamesAndValuesDo: aTwoArgumentBlock
	self do: [:each |
		aTwoArgumentBlock
			value: each name
			value: each value]