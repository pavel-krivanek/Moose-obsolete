initialization
initialize
	
	super initialize.
	
	selectedDirectory := FileSystem workingDirectory.
	selectedImporting := #manually.
	importWithFilter := true.
	hismoImporter := MooseHismoImporter new.
	
	self createFirstPane.
	self createMiddlePane.
	self createLastPane