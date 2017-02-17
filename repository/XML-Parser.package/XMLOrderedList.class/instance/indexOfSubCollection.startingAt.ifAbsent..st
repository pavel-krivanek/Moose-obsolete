accessing
indexOfSubCollection: aSubCollection startingAt: anIndex ifAbsent: aBlock
	^ collection
		indexOfSubCollection: aSubCollection
		startingAt: anIndex
		ifAbsent: aBlock