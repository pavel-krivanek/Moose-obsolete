addition-removal
setPart: aWizardPart associatedTo: aSymbol 

	self setPart: aWizardPart.	
	partsAndInformationsAssociated 
		at: aWizardPart
		put: aSymbol.
	
		
	