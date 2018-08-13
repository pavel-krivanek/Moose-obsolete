documentation
extensions

	^ self localMethods select: [ :each | each package ~= self package ]