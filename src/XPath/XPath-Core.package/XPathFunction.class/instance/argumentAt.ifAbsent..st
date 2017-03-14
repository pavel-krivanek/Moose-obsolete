accessing
argumentAt: anIndex ifAbsent: aBlock
	^ self arguments
		at: anIndex
		ifAbsent: aBlock