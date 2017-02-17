basic examples
multiCheckBoxesPartUsing: aRendrer
	"self multiCheckBoxesPart"

	| wizardControl  wizardPane1 wizardPane2  checkboxesPart textFieldPart textPart |
	wizardControl := WizardControl new.
	wizardControl renderer: aRendrer.
	wizardPane1 := WizardFirstPane new.
	wizardPane2 := WizardLastPane new.
	
	checkboxesPart := MultiCheckboxesPart  new
							labels: {'first checkbox'. 'second checkbox'. 'third checkbox'. 'fourth checkbox'};
							yourself.
							
	textPart := TextPart new
					defaultValue: [:requiredInputs | 
						|string|
						string := ''.
						(requiredInputs at: #selectedLabels) do: [:anAssoc |
							anAssoc value ifTrue: [
								string := string, ' ',anAssoc key
								].
							].
						string
						].
		
	wizardPane1 column: checkboxesPart associatedTo: #selectedLabels.	
	wizardPane2 column: textPart requiring: {#selectedLabels}.
		
	wizardControl 
		addPane: wizardPane1;
		addPane: wizardPane2. 
		
	wizardControl open. 
	
	