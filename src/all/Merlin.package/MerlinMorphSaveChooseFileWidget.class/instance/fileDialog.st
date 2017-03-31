accessing
fileDialog

	^ fileDialog ifNil: [fileDialog :=  ((self newSaveFileDialogNamed: self wizardPart selectedPathName)).]