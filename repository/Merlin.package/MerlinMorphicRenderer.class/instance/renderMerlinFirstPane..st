rendering
renderMerlinFirstPane: aWizardFirstPane

	| tmpRenderer |
	tmpRenderer := MerlinMorphicFirstPaneRenderer new dialogWindow: self dialogWindow ; wizardRenderer: self; yourself.
	aWizardFirstPane renderer: tmpRenderer.
	^ tmpRenderer render: aWizardFirstPane        