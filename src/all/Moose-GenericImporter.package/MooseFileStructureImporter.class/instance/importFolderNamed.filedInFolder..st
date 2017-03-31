importing
importFolderNamed: aFolderName filedInFolder: aContainerFolder 
	 
	| folder | 
		self flag: #toBeFixed.
	folder := FAMIXFolder 
		named: aFolderName basename 
		filedIn: aContainerFolder. 
	 folder parentFolder: aContainerFolder. 
	self importContentsInFolderNamed: aFolderName reference filedInFolder: folder. 
	self mooseModel add: folder