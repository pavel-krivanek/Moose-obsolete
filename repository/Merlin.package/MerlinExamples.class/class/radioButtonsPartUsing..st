basic examples
radioButtonsPartUsing: aRenderer
	"self radioButtonsPart"

	| wizardControl  wizardPane1 wizardPane2  radioButtonsPart textPart  |
	wizardControl := WizardControl new.
	wizardControl renderer: aRenderer.
	wizardPane1 := WizardFirstPane new.
	wizardPane2 := WizardLastPane new.
	
	radioButtonsPart := RadioButtonsPart  new
							options: {#a. #b. #c};
							yourself.
						
	textPart := TextPart new
					defaultValue: [:requiredInputs |
						requiredInputs at: #optionSelected
						];
					yourself.
		
	wizardPane1 row: radioButtonsPart associatedTo: #optionSelected.
	wizardPane2 row: textPart requiring: {#optionSelected}.	
		
	wizardControl 
		addPane: wizardPane1;
		addPane: wizardPane2.
		
	wizardControl open. 
	
	