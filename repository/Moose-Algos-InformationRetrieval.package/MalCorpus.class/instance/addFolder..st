adding
addFolder: aFoldername
	
	aFoldername asFileReference files do: [:each | self addFile: each]