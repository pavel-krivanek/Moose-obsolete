rendering
render: aWizardControl

	self wizardControl: aWizardControl.
	self currentIndex: 1.
	^ self currentPane renderOnMerlinRenderer: self