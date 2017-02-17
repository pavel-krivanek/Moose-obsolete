testing
includesPrefix: aPrefix mappedTo: aURI
	^ (self
		prefixMappingAt: aPrefix
		ifAbsent: [^ false]) = aURI