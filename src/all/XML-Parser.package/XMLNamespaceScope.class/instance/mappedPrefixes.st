accessing
mappedPrefixes
	^ prefixMappings
		ifNil: [#()]
		ifNotNil: [prefixMappings keys]