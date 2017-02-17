tests
testWizardPaneRemoveSubcomponentAt
	
      | wizardPane1 firstCheckBoxPart secondCheckBoxPart |
	wizardControl := MockWizardControl new.
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
	self assert: wizardPane1 numberOfSubComponents = 1.
	wizardPane1 row: secondCheckBoxPart associatedTo: #secondCheckbocValue requiring: {#firstCheckbocValue}.
	self assert: wizardPane1 numberOfSubComponents = 2.
	
	wizardControl 
		addPane: wizardPane1.
	wizardControl open.
	self assert: (wizardPane1 subComponentAt: 1) = firstCheckBoxPart.
	self assert: (wizardPane1 subComponentAt: 2) = secondCheckBoxPart.
	wizardPane1 removeSubComponentAt: 1.
	self deny: (wizardPane1 subComponentAt: 1) = firstCheckBoxPart.
	self assert: (wizardPane1 subComponentAt: 1) = secondCheckBoxPart.