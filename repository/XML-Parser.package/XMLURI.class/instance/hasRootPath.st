testing
hasRootPath
	^ self rawPathSegments size = 2
		and: [self rawPathSegments allSatisfy: [:each | each isEmpty]]