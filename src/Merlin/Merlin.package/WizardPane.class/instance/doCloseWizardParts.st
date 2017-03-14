window control
doCloseWizardParts

	self wizardParts do: [:aWizardPart |
		aWizardPart isOpen: false.
		]
	

	