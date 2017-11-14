basic
basicOnPath: aPathString
	^ (XMLClassFinder classNamed: #StandardFileStream)
		readOnlyFileNamed: aPathString