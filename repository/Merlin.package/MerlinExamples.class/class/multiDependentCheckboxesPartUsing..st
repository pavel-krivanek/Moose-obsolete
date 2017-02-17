basic examples
multiDependentCheckboxesPartUsing: aRenderer
	"self multiDependentCheckboxesPart"

	| wizardControl  wizardPane1 wizardPane2  checkboxesPart textFieldPart textPart |
	wizardControl := WizardControl new.
	wizardControl renderer: aRenderer.
	wizardPane1 := WizardSinglePane new.
	
	checkboxesPart := MultiDependentCheckboxesPart  new
							labelsAndDependencies: (Dictionary new
								at: #label1 put: {#label2. #label3};
								at: #label2 put: {#label3};
								at: #label3 put: #();
								yourself
							);
							yourself.
							
	wizardPane1 row: checkboxesPart associatedTo: #selectedLabels.	
		
	wizardControl 
		addPane: wizardPane1.
		
	wizardControl open. 
	
	