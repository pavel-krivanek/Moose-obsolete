basic examples
parametrizedDropListsUsing: aRenderer
	"self parametrizedDropLists"

	| wizardControl  wizardPane1 wizardPane2 firstDropListPartPart secondDropListPart |
	wizardControl := WizardControl new.
	wizardControl renderer: aRenderer.
	wizardPane1 := WizardFirstPane new.
	wizardPane2 := WizardLastPane new.
	
	firstDropListPartPart := DropListPart  new
									inGroupboxNamed: 'Select an item';
									list: #('un' 'deux' 'trois' 'quatre');
									defaultValue: 'trois';
									useLatePopulateContents: false;
									yourself.
									
	secondDropListPart := DropListPart  new
									inGroupboxNamed: 'Same selection than previous dropList';
									defaultValue: [:inputs | (inputs at: #firstDropListValue) ];
									list: #('un' 'deux' 'trois' 'quatre');
									yourself.
		
		
	wizardPane1 row: firstDropListPartPart associatedTo: #firstDropListValue.
	wizardPane2 row: secondDropListPart associatedTo: #secondDropListValue requiring: {#firstDropListValue}.
		
	wizardControl 
		addPane: wizardPane1 ; 
		addPane: wizardPane2.
		
	wizardControl open. 
	
	