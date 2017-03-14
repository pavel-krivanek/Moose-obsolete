creating
createMiddlePane
	
	| wizardPane selectedImportingPart useFilterPart |
	
	self wizardPanes size >= 2
		 ifTrue: [ self removePaneAt: 2 ].
	
	wizardPane := WizardMiddlePane named: 'Set how to import the Hismo Model (2/3)'.

	selectedImportingPart := RadioButtonsPart  new
		inGroupboxNamed: 'Select how to import the MSE files';
		options: #(#manually #automatically);
		callback: [ :returnedValue |
			selectedImporting := returnedValue.
			self createLastPane ].

	useFilterPart := MultiCheckboxesPart  new
		inGroupboxNamed: 'Import entities using a filter?';
		labels: #('use filter');
		deselectAllOptions;
		callback: [ :outputValue |
			self setFilterPartForPane: wizardPane whenFilterIsSelected: outputValue value ]
		yourself.
		
	wizardPane row: selectedImportingPart.
	wizardPane addPart: useFilterPart associatedTo: #useFilter.
	self addPane: wizardPane