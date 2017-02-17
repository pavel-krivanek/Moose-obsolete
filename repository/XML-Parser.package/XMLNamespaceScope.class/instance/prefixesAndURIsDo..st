enumerating
prefixesAndURIsDo: aTwoArgumentBlock
	prefixMappings
		ifNotNil: [prefixMappings keysAndValuesDo: aTwoArgumentBlock]