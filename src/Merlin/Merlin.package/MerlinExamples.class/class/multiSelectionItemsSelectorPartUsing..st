basic examples
multiSelectionItemsSelectorPartUsing: aRenderer
	"self multiSelectionItemsSelectorPart"

	| wizardControl  wizardPane1 wizardPane2  itemsSelectorsPart listPart  |
	wizardControl := WizardControl new.
	wizardControl renderer: aRenderer.
	wizardPane1 := WizardFirstPane new.
	wizardPane2 := WizardLastPane new.
	
	itemsSelectorsPart := MultiSelectionItemSelectorPart new
							initialList: #(item1 item2 item3 item4);
							yourself.
							
	listPart := ListPart new
					initialList: [:requiredInputs | 
						(requiredInputs at: #selectedItems)
						];
					yourself.
		
	wizardPane1 row: itemsSelectorsPart associatedTo: #selectedItems.	
	wizardPane2 row: listPart requiring: {#selectedItems}.
		
	wizardControl 
		addPane: wizardPane1;
		addPane: wizardPane2. 
		
	wizardControl open. 
	
	