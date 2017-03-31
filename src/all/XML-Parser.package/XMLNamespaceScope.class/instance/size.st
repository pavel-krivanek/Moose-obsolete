accessing
size
	^ prefixMappings
		ifNil: [0]
		ifNotNil: [prefixMappings size]