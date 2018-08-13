accessing
name: aString

	| oldName |
	
	oldName := self name.
	super name: aString.
	
	self announce: (RPackageRenamed 
			to: self 
			oldName: oldName 
			newName: aString)