importing
importFileNamed: aFileName filedInFolder: aContainerFolder 
	 
	| file | 
		self flag: #toBeFixed.
	file := FAMIXFile 
		named: aFileName basename 
		filedIn: aContainerFolder. 
		file parentFolder:aContainerFolder.
	self mooseModel add: file