private
addRawDotPathSegment
	self hasNonDirectoryPath
		ifTrue: [self haveDirectoryPath]