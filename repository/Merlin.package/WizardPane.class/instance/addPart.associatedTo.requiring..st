addition-removal
addPart: aWizardPart associatedTo: aSymbol requiring: aCollectionOfSymbols 
	"when a wizard part is added to a WizardPane, an output is associated to it. Each part is associate to only one output but can require several inputs specified by aCollectionOfSymbols"

	wizardParts add: aWizardPart.
	aWizardPart wizardPane: self.
	(mainPaneLine ifNil: [mainPaneLine := PaneColumn fromPane: self])
		row: aWizardPart.
	partsAndInformationsAssociated 
		at: aWizardPart
		put: aSymbol.
	partsAndRequiredInformations 
		at: aWizardPart
		put: aCollectionOfSymbols.
	