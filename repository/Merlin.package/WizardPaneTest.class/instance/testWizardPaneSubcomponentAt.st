tests
testWizardPaneSubcomponentAt
	
      | wizardPane1 firstCheckBoxPart secondCheckBoxPart |
	wizardControl := WizardControl new.
	wizardPane1 := WizardSinglePane new.
	
	firstCheckBoxPart := CheckboxPart new
									label: 'if selected, next one not selected';
									inGroupboxNamed: 'Test';
									defaultValue: true;
									useLatePopulateContents: false;
									yourself.
									
	secondCheckBoxPart := CheckboxPart new
									label: 'selected if previous one not selected';
									inGroupboxNamed: 'Test';
									defaultValue: false;
									yourself.
		
		
	wizardPane1 row: firstCheckBoxPart associatedTo: #firstCheckbocValue.
	self assert: (wizardPane1 subComponentAt: 1) = firstCheckBoxPart.
	wizardPane1 row: secondCheckBoxPart associatedTo: #secondCheckbocValue requiring: {#firstCheckbocValue}.
	self assert: (wizardPane1 subComponentAt: 2) = secondCheckBoxPart.
	self deny: (wizardPane1 subComponentAt: 1) = secondCheckBoxPart.
	
		
	wizardControl 
		addPane: wizardPane1.