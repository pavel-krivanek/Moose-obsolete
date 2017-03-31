enumerating
keysAndValuesDo: aTwoArgumentBlock
	self critical: [self collection keysAndValuesDo: aTwoArgumentBlock]