accessing
inputRequiredBy: aWizarPart 
	"enable a WizardPart to retrieve  from the wizard control an input required to perform its tasks."
	
	| informationsRequired |
	informationsRequired := partsAndRequiredInformations at: aWizarPart.
	^ informationsRequired collect: [ :each | self wizardControl valueOfInformation: each ]