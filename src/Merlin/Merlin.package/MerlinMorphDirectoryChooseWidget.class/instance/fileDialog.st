accessing
fileDialog

	^ fileDialog ifNil: [fileDialog :=  ((self newDirectoryDialogNamed: self wizardPart selectedPathName)).]