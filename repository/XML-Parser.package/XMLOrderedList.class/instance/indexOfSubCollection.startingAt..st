accessing
indexOfSubCollection: aSubCollection startingAt: anIndex
	^ self
		indexOfSubCollection: aSubCollection
		startingAt: anIndex
		ifAbsent: [0]