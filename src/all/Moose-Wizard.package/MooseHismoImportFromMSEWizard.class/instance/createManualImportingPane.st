creating
createManualImportingPane

	| wizardPane selectedVersionsPart |
	
	wizardPane := WizardLastPane named: 'Manual Importing (3/3)'.
	selectedVersionsPart := MultiSelectionItemSelectorPart new
		inGroupboxNamed: 'Select the MSEs';
		initialList: versions keys sorted;
		yourself.
	
	wizardPane addPart: selectedVersionsPart associatedTo: #selectedVersions.
	self addPane: wizardPane.