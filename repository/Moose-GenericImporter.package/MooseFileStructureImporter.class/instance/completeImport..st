importing
completeImport: folders 
	 
	self flag: #toBeFixed.
	folders 
		do: 
			[:each |  
			| folder | 
			folder := FAMIXFolder named: each filedIn: nil. 
			self importContentsInFolderNamed: (FileSystem disk referenceTo: each) filedInFolder: folder. 
			self mooseModel add: folder]. 
	self mooseModel sourceLanguage: FAMIXUnknownSourceLanguage new