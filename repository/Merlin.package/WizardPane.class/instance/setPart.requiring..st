addition-removal
setPart: aWizardPart requiring: aCollectionOfSymbols

	self setPart: aWizardPart.
	partsAndRequiredInformations 
		at: aWizardPart
		put: aCollectionOfSymbols.
		
	