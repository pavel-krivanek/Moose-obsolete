window control
doOpenWizardParts

	self wizardParts do: [:aWizardPart |
		aWizardPart isOpen: true.
		aWizardPart hasBeenOpen: true.
		]
	

	