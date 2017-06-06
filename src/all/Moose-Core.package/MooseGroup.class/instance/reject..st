enumerating
reject: aBlock
	^ self species withAll: (self entities reject: aBlock)