accessing
prefixMappingAt: aPrefix ifAbsent: aBlock
	^ prefixMappings
		ifNil: [aBlock value]
		ifNotNil: [
			prefixMappings
				at: aPrefix
				ifAbsent: aBlock]