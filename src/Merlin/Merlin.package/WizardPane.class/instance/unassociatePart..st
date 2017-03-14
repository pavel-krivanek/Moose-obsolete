accessing - main pane line
unassociatePart: aWizardPart

	|associatedInformation requiredInformation|
	associatedInformation := partsAndInformationsAssociated at: aWizardPart.
 	partsAndRequiredInformations removeKey: aWizardPart ifAbsent: [].
	partsAndInformationsAssociated removeKey: aWizardPart.
	"when unassociating a part, the outputValue might not have been yet transmit to the wizardControl (as the next button might not have been pressed):"
	self wizardControl wizardInformations removeKey: associatedInformation ifAbsent: []. 