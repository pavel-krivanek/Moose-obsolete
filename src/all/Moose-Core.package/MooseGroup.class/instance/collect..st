enumerating
collect: aBlock
	^ self species withAll: (self entities collect: aBlock)