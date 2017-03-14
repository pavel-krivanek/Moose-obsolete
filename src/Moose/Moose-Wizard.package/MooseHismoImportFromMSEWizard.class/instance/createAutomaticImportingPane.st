creating
createAutomaticImportingPane

	| wizardPane listPart datePatternPart strategyPart numberPart |
	
	wizardPane := WizardLastPane named: 'Automatic Importing (2/3)'.

	listPart := ListPart new
		inGroupboxNamed: 'MSE files found in selected folder';
		initialList: versions keys sorted; 
		yourself.

	datePatternPart := TextFieldPart new 
		inGroupboxNamed: 'Type the date pattern in the MSE files (for example: ''dd-mm-yyyy'')'; 
		defaultValue: 'dd-mm-yyyy';
		yourself.
	
	strategyPart := DropListPart  new
		inGroupboxNamed: 'Select the strategy to import the MSE files';
		list: (MooseHismoImporter strategyMethods);
		defaultValue: 1;
		yourself.
						
	numberPart := TextFieldPart new 
		inGroupboxNamed: 'Type the number of days, months or years if you selected either everyNDays:, everyNMonths: or everyNYears:'; 
		yourself.
	
	wizardPane row: listPart.
	wizardPane addPart: datePatternPart associatedTo: #datePattern.
	wizardPane addPart: strategyPart associatedTo: #strategy.
	wizardPane addPart: numberPart associatedTo: #n.
	
	self addPane: wizardPane