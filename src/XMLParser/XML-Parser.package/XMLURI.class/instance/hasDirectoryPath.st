testing
hasDirectoryPath
	^ self hasPath
		and: [self rawPathSegments last isEmpty]