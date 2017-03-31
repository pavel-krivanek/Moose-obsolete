rendering
renderMerlinMiddlePane: aWizardMiddlePane

	| tmpRenderer |
	tmpRenderer := MerlinMorphicMiddlePaneRenderer new dialogWindow: self dialogWindow ; wizardRenderer: self; yourself.
	aWizardMiddlePane renderer: tmpRenderer.
	^ tmpRenderer render: aWizardMiddlePane    