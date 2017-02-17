basic examples
parametrizedMorphDropListsUsing: aRenderer
	"self parametrizedMorphDropLists"

	| wizardControl  wizardPane1 wizardPane2 firstDropListPartPart secondDropListPart |
	wizardControl := WizardControl new.
	wizardControl renderer: aRenderer.
	wizardPane1 := WizardFirstPane new.
	wizardPane2 := WizardLastPane new.

	firstDropListPartPart := MorphDropListPart  new
									inGroupboxNamed: 'Select an item';
									list: ({Color red . Color yellow . Color blue } collect: [:c | Morph new extent: 80@12; color: c]);
									defaultValue: 2;
									useLatePopulateContents: false;
									yourself.
									
	secondDropListPart := MorphDropListPart  new
									inGroupboxNamed: 'Same selection than previous dropList';
									defaultValue: [:inputs | (inputs at: #firstDropListValue) ];
									list: ({Color red . Color yellow . Color blue } collect: [:c | Morph new extent: 80@12; color: c]);
									yourself.
		
		
	wizardPane1 row: firstDropListPartPart associatedTo: #firstDropListValue.
	wizardPane2 row: secondDropListPart associatedTo: #secondDropListValue requiring: {#firstDropListValue}.
		
	wizardControl 
		addPane: wizardPane1 ; 
		addPane: wizardPane2.
		
	wizardControl open. 
	
	