enumerating
detect: aBlock
	^ self detect: aBlock ifNone: [self defaultValue]