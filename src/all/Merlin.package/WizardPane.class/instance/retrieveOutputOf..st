actions
retrieveOutputOf: aWizardPart
	
	| informationSymbol |
	informationSymbol := partsAndInformationsAssociated at: aWizardPart ifAbsent: [nil].	
	informationSymbol ifNotNil: [
		wizardControl information: informationSymbol withValue: aWizardPart transformedOutputValue.
	].