basic examples
usingCallbackAndRefreshUsing: aRenderer
	"self usingCallbackAndRefresh"

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
										wizardPane1 row: firstDropListPartPart.  
										1 to: outputValue do: [:index |
											wizardPane1 row: (DropListPart new list: #('hey' 'ho'); defaultValue: 1 ; inGroupboxNamed: index asString ; yourself). 
											].
										wizardPane1 refresh.
										];
									yourself.
									
	wizardPane1 row: firstDropListPartPart associatedTo: #firstDropListValue.
		
	wizardControl 
		addPane: wizardPane1. 
		
	wizardControl open. 
	
	