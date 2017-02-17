rendering
renderMerlinSinglePane: aWizardSinglePane

	|tmpRenderer|
	tmpRenderer :=  MerlinMorphicSinglePaneRenderer new dialogWindow: self dialogWindow ; wizardRenderer: self; yourself.
	aWizardSinglePane renderer: tmpRenderer.
	^ tmpRenderer render: aWizardSinglePane  