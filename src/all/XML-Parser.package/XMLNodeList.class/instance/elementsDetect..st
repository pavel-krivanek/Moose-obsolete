enumerating
elementsDetect: aBlock
	^ self
		elementsDetect: aBlock
		ifNone: [self defaultValue]