private - customization
deleteStringMessageFromRowIndexedBy: anIndex
	"allow the user to dynamically delete a message he put before at the row number anIndex (the index 1 is attributed to the PackageSelectorStuff) "
	| initialBuilderMainContent tmpBuilderMainContent |
	
	initialBuilderMainContent := self contents submorphs asOrderedCollection .
	"tmpBuilderMainContent represent the new content of main window (in wich we will delete the message)"
	tmpBuilderMainContent := initialBuilderMainContent copy.

	"We delete the message from the row number anIndex"
	tmpBuilderMainContent at: anIndex put: (
		self newRowWith: {
			(initialBuilderMainContent at: anIndex) submorphs first "detect: [:component | (component isKindOf: GroupboxMorph)  ]".
			self newColumnWith: { }.
		}).
	"we set the new content of the window"
		self contents:( 
		tmpBuilderMainContent asArray
	).
	self wizardPane buildDialogWindow .
	