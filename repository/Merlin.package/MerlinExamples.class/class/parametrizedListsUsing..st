basic examples
parametrizedListsUsing: aRenderer
	"self parametrizedLists"

	| wizardControl  wizardPane1 wizardPane2 firstListPartPart secondListPart |
	wizardControl := WizardControl new.
	wizardControl renderer: aRenderer.
	wizardPane1 := WizardFirstPane new.
	wizardPane2 := WizardLastPane new.
	
	firstListPartPart := ListPart  new
									inGroupboxNamed: 'Select an item';
									list: #('un' 'deux' 'trois' 'quatre');
									defaultValue: 1;
									useLatePopulateContents: false;
									yourself.
									
	secondListPart := ListPart  new
									inGroupboxNamed: 'Same selection than previous dropList';
									defaultValue: [:inputs | (inputs at: #firstListValue) ];
									list: #('un' 'deux' 'trois' 'quatre');
									yourself.
		
		
	wizardPane1 row: firstListPartPart associatedTo: #firstListValue.
	wizardPane2 row: secondListPart associatedTo: #secondListValue requiring: {#firstListValue}.
		
	wizardControl 
		addPane: wizardPane1 ; 
		addPane: wizardPane2.
		
	wizardControl open. 
	
	