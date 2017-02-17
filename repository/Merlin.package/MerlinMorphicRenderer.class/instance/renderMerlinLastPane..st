rendering
renderMerlinLastPane: aWizardLastPane

	|tmpRenderer|
	tmpRenderer := MerlinMorphicLastPaneRenderer new dialogWindow: self dialogWindow ;wizardRenderer: self;yourself.
	aWizardLastPane renderer: tmpRenderer.
	^ tmpRenderer render: aWizardLastPane      