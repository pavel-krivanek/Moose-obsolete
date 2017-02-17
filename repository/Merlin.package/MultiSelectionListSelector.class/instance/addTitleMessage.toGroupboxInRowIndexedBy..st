private - customization
addTitleMessage: aString toGroupboxInRowIndexedBy: anIndex

	| initialBuilderMainContent tmpBuilderMainContent groupBox |
	
	initialBuilderMainContent := self contents submorphs asOrderedCollection .
	"tmpBuilderMainContent represent the new content of main window (in wich we will add the message)"
	tmpBuilderMainContent := initialBuilderMainContent copy.

	"We add the message to the row number anIndex"
	groupBox := (tmpBuilderMainContent at: anIndex) submorphs first.
	groupBox label: groupBox label ,' - ',aString.
	
	self wizardPane buildDialogWindow  .
	self wizardPane adaptSize.
	