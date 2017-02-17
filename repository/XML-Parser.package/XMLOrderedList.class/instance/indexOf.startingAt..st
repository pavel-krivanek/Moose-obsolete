accessing
indexOf: anObject startingAt: anIndex 
	^ self
		indexOf: anObject
		startingAt: anIndex
		ifAbsent: [0]