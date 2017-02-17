basic examples
multiDependentCheckboxesWithCallbackPartUsing: aRenderer
	"self multiDependentCheckboxesWithCallbackPart"

	| wizardControl  wizardPane1 wizardPane2  checkboxesPart textFieldPart textPart listPart |
	wizardControl := WizardControl new.
	wizardControl renderer: aRenderer.
	wizardPane1 := WizardFirstPane new.
	wizardPane2 := WizardLastPane new.
	
	listPart := ListPart new
				inGroupboxNamed: 'Selected options';
				list: #();
				yourself.
				
	checkboxesPart := MultiDependentCheckboxesPart  new
							labelsAndDependencies: (Dictionary new
								at: #label1 put: {#label2. #label3};
								at: #label2 put: {#label3};
								at: #label3 put: #();
								yourself
							);
							callback: [:outputValue |
								listPart list: (outputValue select: [:each | each value = true] thenCollect: [:each | each key])
								]
							yourself.
							
	
							
	wizardPane1 row: checkboxesPart associatedTo: #selectedLabels.	
	wizardPane2 row: listPart associatedTo: #selectedOptions.
	
	wizardControl 
		addPane: wizardPane1;
		addPane: wizardPane2.
		
	wizardControl open. 
	
	