importing
importContentsInFolderNamed: aFolderName filedInFolder: aContainerFolder 
	 
	| entries |
	entries := aFolderName entries.
	(entries select: #isFile)
		do: [:each | self importFileNamed: each filedInFolder: aContainerFolder].
	(entries select: #isDirectory)
		do: [:each | self importFolderNamed: each filedInFolder: aContainerFolder]