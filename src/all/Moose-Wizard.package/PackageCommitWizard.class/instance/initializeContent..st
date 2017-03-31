initialize-release
initializeContent: workingCopies

	| lastPane messagePart packagesPart |
	packages := workingCopies.
	
	messagePart := (TextEditorPart inGroupboxNamed: 'Commit Message')
					textEditorVerticalSize: 175;
					textEditorHorizontalSize: 300;
					yourself.
	packagesPart := TextPart 
					on: [:requiredInputs | self stringForPackages: workingCopies] 
					inGroupBoxNamed: 'Packages'.

	lastPane := WizardLastPane named: 'Save dirty packages'.	
	
	lastPane 
		column: [:c |
			c row: messagePart associatedTo: #message.
			];
		column: packagesPart associatedTo: #packages.
	self addPane: lastPane
