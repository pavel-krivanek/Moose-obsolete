testing
isFile
	^ self exists
		and: [self directoryEntry isDirectory not]