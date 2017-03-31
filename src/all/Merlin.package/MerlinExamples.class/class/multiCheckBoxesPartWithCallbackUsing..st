basic examples
multiCheckBoxesPartWithCallbackUsing: aRenderer
	"self multiCheckBoxesPartWithCallback"

	| wizardControl  wizardPane1 wizardPane2  checkboxesPart textFieldPart textPart |
	wizardControl := WizardControl new.
	wizardPane1 := WizardSinglePane new.
	
	checkboxesPart := MultiCheckboxesPart  new
							labels: {'select/deselect all other checkboxes'. 'normal checkbox'. 'normal checkbox'. 'normal checkbox'};
							callback: [:output :wizardPart | 
								(output key = 'select/deselect all other checkboxes') ifTrue: [
									wizardPart options do: [:anOption |
										anOption = 'select/deselect all other checkboxes' ifFalse: [
											wizardPart setOption: anOption to:  output value  
											]
										]
									].
								
							];
							yourself.
						
		
	wizardPane1 row: checkboxesPart associatedTo: #selectedLabels.	
		
	wizardControl 
		addPane: wizardPane1.
		
	wizardControl open. 
	
	