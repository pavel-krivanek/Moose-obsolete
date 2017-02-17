accessing
indexOf: anObject startingAt: anIndex ifAbsent: aBlock
	^ collection
		indexOf: anObject
		startingAt: (anIndex max: 1)
		ifAbsent: aBlock