accessing - parts
column: aWizardPart associatedTo: aSymbol

	subComponents add:  aWizardPart.
	self pane setPart: aWizardPart associatedTo: aSymbol. 
	aWizardPart paneLine: self.
	