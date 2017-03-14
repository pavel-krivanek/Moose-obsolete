accessing
fileDialog

	^ fileDialog ifNil: [ fileDialog := self newFileDialogNamed: self wizardPart selectedPathName ]