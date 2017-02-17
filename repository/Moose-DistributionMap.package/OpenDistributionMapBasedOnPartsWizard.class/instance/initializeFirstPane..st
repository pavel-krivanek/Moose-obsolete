initialize-release
initializeFirstPane: aWizardPane
	aWizardPane addPart: self containersPart associatedTo: #groupClass.
	aWizardPane addPart: self elementsCompositePart associatedTo: #entitiesToComputeSelector.
	aWizardPane addPart: self propertyCompositePart associatedTo: #propertySelector.
	self setConditionsTo: aWizardPane