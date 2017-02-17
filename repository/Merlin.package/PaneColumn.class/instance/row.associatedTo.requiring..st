accessing - parts
row: aWizardPart associatedTo: aSymbol requiring: aCollectionOfSymbol

	subComponents add: aWizardPart.
	self pane setPart: aWizardPart associatedTo: aSymbol requiring: aCollectionOfSymbol. 
	aWizardPart paneLine: self
	