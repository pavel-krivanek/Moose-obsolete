basic examples
usingCallbackAndRefreshAndBlockAsDefaultValueUsing: aRenderer
	"self usingCallbackAndRefreshAndBlockAsDefaultValue"

	| wizardControl  wizardPane1  firstDropListPartPart secondDropListPart |
	wizardControl := WizardControl new.
	wizardControl renderer: aRenderer.
	wizardPane1 := WizardSinglePane new.
	
	firstDropListPartPart := DropListPart  new
									inGroupboxNamed: 'Select number of dropLists you want';
									list: #(1 2 3 4);
									defaultValue: 1;
									callback: [:outputValue | 
										wizardPane1 removeAllParts.
										wizardPane1 row: firstDropListPartPart associatedTo: #firstDropListValue.  
										1 to: outputValue do: [:index |
											wizardPane1 row: (DropListPart new list: #(1 2 3 4); defaultValue: [:requiredInputs | requiredInputs at: #firstDropListValue] ; inGroupboxNamed: index asString ; yourself) associatedTo: #doesntMatter requiring: {#firstDropListValue}. 
											].
										wizardPane1 refresh.
										];
									yourself.
									
	wizardPane1 row: firstDropListPartPart associatedTo: #firstDropListValue.
		
	wizardControl 
		addPane: wizardPane1. 
		
	wizardControl open. 
	
	