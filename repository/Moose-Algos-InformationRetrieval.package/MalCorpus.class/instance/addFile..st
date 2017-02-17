adding
addFile: aFilename
	
	self
		addDocument: aFilename asString
		withContent: aFilename contentsOfEntireFile