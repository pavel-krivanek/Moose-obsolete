testing
includesPrefix: aPrefix
	self
		prefixMappingAt: aPrefix
		ifAbsent: [^ false].
	^ true.