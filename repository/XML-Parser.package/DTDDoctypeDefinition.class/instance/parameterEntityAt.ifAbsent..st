accessing
parameterEntityAt: aName ifAbsent: aBlock
	^ self parameterEntities
		at: aName
		ifAbsent: aBlock