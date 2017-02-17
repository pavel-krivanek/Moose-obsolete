accessing
fileDirectory
	^ fileDirectory
		ifNil: [fileDirectory := (XMLClassFinder classNamed: #FileDirectory) default]