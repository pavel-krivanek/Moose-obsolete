testing
hasNonDirectoryPath
	^ self hasPath
		and: [self hasDirectoryPath not]