*Famix-File
allFiles
	<navigation: 'All files'>
	^ (self allWithSubTypesOf: FAMIXFile)
		sorted: [ :c1 :c2 | c1 name < c2 name ];
		yourself