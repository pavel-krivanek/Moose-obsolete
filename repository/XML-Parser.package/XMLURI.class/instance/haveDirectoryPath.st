private
haveDirectoryPath
	self hasPath
		ifFalse: [self rawPathSegments addLast: ''].
	self rawPathSegments addLast: ''.