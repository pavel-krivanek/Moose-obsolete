basic
basicCurrentWorkingDirectory
	^ String streamContents: [:stream |
		"the class-side workingDirectory isn't used for backwards compatibility"
		(XMLClassFinder classNamed: #FileSystem) disk workingDirectory
			path segments do: [:each |
				stream
					nextPut: $/;
					nextPutAll: each]].