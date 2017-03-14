instance creation
basicOnPath: aPathString
	"use forceNewFileNamed: to ensure truncation of existing files before writing"
	^ (XMLClassFinder classNamed: #StandardFileStream)
		forceNewFileNamed: aPathString