unmapping
unmapPrefix: aPrefix ifAbsent: aBlock
	prefixMappings
		ifNil: [^ aBlock value]
		ifNotNil: [
			"copy-on-write"
			^ self copiedPrefixMappings 
				removeKey: aPrefix
				ifAbsent: aBlock]