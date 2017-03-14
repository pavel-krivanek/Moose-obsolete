testing
hasAbsolutePath
	^ self hasPath
		and: [self rawPathSegments first isEmpty]