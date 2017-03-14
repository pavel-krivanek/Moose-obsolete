accessing
mappedPrefixes
	^ prefixMappings
		ifNil: [Array new]
		ifNotNil: [prefixMappings keys]