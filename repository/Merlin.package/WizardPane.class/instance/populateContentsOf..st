window control
populateContentsOf: aWizardPart

	aWizardPart useLatePopulateContents 
		ifTrue: [aWizardPart latePopulateContents]
		ifFalse: [
			aWizardPart numberOfPopulateContents > 1
				ifFalse: [aWizardPart latePopulateContents]
			].
	aWizardPart numberOfPopulateContents: (aWizardPart numberOfPopulateContents +1).
	
	