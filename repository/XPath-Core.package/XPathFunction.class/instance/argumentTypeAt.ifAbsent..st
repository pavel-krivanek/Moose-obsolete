accessing
argumentTypeAt: anIndex ifAbsent: aBlock
	^ self prototype
		argumentTypeAt: anIndex
		ifAbsent: aBlock