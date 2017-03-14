*Famix-File
allFolders
	
	<navigation: 'All folders'>
	^ (self allWithSubTypesOf: FAMIXFolder)  sorted: [:c1 :c2 | c1 name < c2 name]; yourself