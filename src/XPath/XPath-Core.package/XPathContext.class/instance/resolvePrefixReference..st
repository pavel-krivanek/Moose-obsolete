private
resolvePrefixReference: aPrefix
	^ self
		resolvePrefix: aPrefix
		ifUnresolvable: [self errorUndeclaredPrefix: aPrefix]