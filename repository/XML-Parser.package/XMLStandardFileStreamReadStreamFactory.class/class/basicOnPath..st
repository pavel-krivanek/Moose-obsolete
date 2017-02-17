instance creation
basicOnPath: aPathString
	^ (XMLClassFinder classNamed: #StandardFileStream)
		readOnlyFileNamed: aPathString