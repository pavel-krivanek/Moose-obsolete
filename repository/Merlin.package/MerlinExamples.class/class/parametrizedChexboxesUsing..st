basic examples
parametrizedChexboxesUsing: aRenderer
	"self parametrizedChexboxes"

	| wizardControl  wizardPane1 wizardPane2 firstCheckBoxPart secondCheckBoxPart |
	wizardControl := WizardControl new.
	wizardControl renderer: aRenderer.
	wizardPane1 := WizardFirstPane new.
	wizardPane2 := WizardLastPane new.
	
	firstCheckBoxPart := CheckboxPart new
									label: 'if selected, next one not selected';
									inGroupboxNamed: 'Test';
									defaultValue: true;
									useLatePopulateContents: false;
									yourself.
									
	secondCheckBoxPart := CheckboxPart new
									label: 'selected if previous one not selected';
									inGroupboxNamed: 'Test';
									defaultValue: [:inputs | (inputs at: #firstCheckbocValue) not];
									yourself.
		
		
	wizardPane1 row: firstCheckBoxPart associatedTo: #firstCheckbocValue.
	wizardPane2 row: secondCheckBoxPart associatedTo: #secondCheckbocValue requiring: {#firstCheckbocValue}.
		
	wizardControl 
		addPane: wizardPane1 ; 
		addPane: wizardPane2.
		
	wizardControl open. 
	
	