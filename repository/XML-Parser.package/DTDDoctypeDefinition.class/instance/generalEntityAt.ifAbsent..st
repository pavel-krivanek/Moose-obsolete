accessing
generalEntityAt: aName ifAbsent: aBlock
	^ self generalEntities
		at: aName
		ifAbsent: aBlock