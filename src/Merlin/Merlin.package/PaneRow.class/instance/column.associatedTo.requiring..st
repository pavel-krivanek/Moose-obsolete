accessing - parts
column: aWizardPart associatedTo: aSymbol requiring: aCollectionOfSymbols

	subComponents add:  aWizardPart.
	self pane setPart: aWizardPart associatedTo: aSymbol requiring: aCollectionOfSymbols. 
	aWizardPart paneLine: self.
	