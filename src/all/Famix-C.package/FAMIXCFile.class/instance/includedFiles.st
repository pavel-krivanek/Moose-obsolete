accessing
includedFiles
	<MSEProperty: #includedFiles type: #FAMIXCFile> <multivalued> <derived>
	<MSEComment: 'Files included by this file.'>

	^ outgoingIncludeRelations collect: [ :each | each target ]