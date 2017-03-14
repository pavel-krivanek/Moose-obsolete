enumerating
queryKeysAndValuesDo: aTwoArgumentBlock
	self rawQuery do: [:each |
		aTwoArgumentBlock
			value: (self percentAndPlusDecode: each key)
			value: (self percentAndPlusDecode: each value)]