enumerating
entityURIStringsAndReplacementsDo: aBlock
	self entityAssociations do: [:each |
		aBlock
			value: each key
			value: each value]