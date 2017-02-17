initialize-release
initialize

	super initialize.
	self selectedPathName: FileSystem disk workingDirectory fullName.