tests
testWizardPaneNumberOfSubcomponents
	
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
	self assert: wizardPane1 numberOfSubComponents = 1.
	wizardPane1 row: secondCheckBoxPart associatedTo: #secondCheckbocValue requiring: {#firstCheckbocValue}.
	self assert: wizardPane1 numberOfSubComponents = 2.
	"wizardPane1 removeAllParts.
	self assert: wizardPane1 numberOfSubComponents = 0.
	"	
	wizardControl 
		addPane: wizardPane1.