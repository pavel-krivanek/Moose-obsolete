initialize-release
initializeFirstPane: aWizardPane

	"compositeParts
		add: partTypesCompositePart;
		add: propertyCompositePart."
	aWizardPane addPart: self containersCompositePart associatedTo: #entitiesToComputeSelector.
	aWizardPane addPart: self elementsPart associatedTo: #groupClass.
	aWizardPane addPart: self propertyCompositePart associatedTo: #propertySelector.
	self setConditionsTo: aWizardPane 