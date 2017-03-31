addition-removal
setPart: aWizardPart associatedTo: aSymbol requiring: aCollectionOfSymbols

	self setPart: aWizardPart  associatedTo: aSymbol.
	partsAndRequiredInformations 
		at: aWizardPart
		put: aCollectionOfSymbols.
		
	