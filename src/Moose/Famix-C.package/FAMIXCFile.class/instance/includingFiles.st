accessing
includingFiles
	<MSEProperty: #includingFiles type: #FAMIXCFile> <multivalued> <derived>
	<MSEComment: 'Files that include this file.'>

	^ incomingIncludeRelations collect: [ :each | each source ]