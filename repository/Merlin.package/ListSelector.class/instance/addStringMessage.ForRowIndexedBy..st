private - customization
addStringMessage: aString ForRowIndexedBy: anIndex
	"allow the user to dynamically add a message (wich can be for example an error message or informations missing) to the new row he created before at the anIndex position (the index one is attributed to the packageSelector stuff) "
	| initialBuilderMainContent tmpBuilderMainContent |
	
	initialBuilderMainContent := self contents submorphs asOrderedCollection .
	"tmpBuilderMainContent represent the new content of main window (in wich we will add the message)"
	tmpBuilderMainContent := initialBuilderMainContent copy.

	"We add the message to the row number anIndex"
	tmpBuilderMainContent at: anIndex put: (
		self newRowWith: {
			(initialBuilderMainContent at: anIndex) submorphs first.
			self newColumnWith: { self newGroupboxNamed:   'Information' With: (self newLabel: aString)}.
		}).
	
	"we set the new content of the window"
		self contents:(  
		tmpBuilderMainContent
	).
	self wizardPane buildDialogWindow  .
	
	