basic examples
usingCallbackOnCheckBoxUsing: aRenderer
	"self usingCallbackOnCheckBox"

	| wizardControl  wizardPane1  firstDropCheckboxPart secondCheckboxPart |
	wizardControl := WizardControl new.
	wizardControl renderer: aRenderer.
	wizardPane1 := WizardSinglePane new.
	
	secondCheckboxPart := CheckboxPart  new
									inGroupboxNamed: 'Same selection than checkbox on top';
									label: 'is selected according the checkbox on top'
									yourself.
	
	firstDropCheckboxPart := CheckboxPart  new
									inGroupboxNamed: 'Select or unselect';
									defaultValue: true;
									label: 'will select the checkbox below';
									callback: [:outputValue |  secondCheckboxPart selected: outputValue.   ];
									yourself.
									
	
		
		
	wizardPane1 row: firstDropCheckboxPart associatedTo: #firstCheckboxValue.
	wizardPane1 row: secondCheckboxPart associatedTo: #secondCheckValue.
		
	wizardControl 
		addPane: wizardPane1. 
		
	wizardControl open. 
	
	