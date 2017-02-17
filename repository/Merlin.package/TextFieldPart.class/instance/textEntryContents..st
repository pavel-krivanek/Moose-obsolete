text entry control
textEntryContents: newContents 
	"set the content of the text entry "
	textEntryContents := newContents.
	wizardPane ifNotNil: 
		[self hasChanged ].
	self changed: #textEntryContents.
	