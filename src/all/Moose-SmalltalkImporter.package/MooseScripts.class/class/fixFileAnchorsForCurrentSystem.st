workspace
fixFileAnchorsForCurrentSystem 
	FAMIXFileAnchor allInstances do: [:each | 
		each fileName: (each fileName copyReplaceAll: '\' with: FileSystem disk delimiter asString).
		each fileName: (each fileName copyReplaceAll: '/' with: FileSystem disk delimiter asString). ]