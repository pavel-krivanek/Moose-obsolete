basic examples
chooseFilePartUsing: aMerlinRenderer
	"self chooseFilePart"

	| wizardControl  wizardPane1  dropListPart checkboxPart textFieldPart compositePart |
	wizardControl := WizardControl new.
	wizardControl renderer: aMerlinRenderer.
	wizardPane1 := WizardSinglePane new.
	
	checkboxPart := ChooseFilePart  new
						validExtensions: 'mse';
						yourself.
		
	wizardPane1 row: checkboxPart.	
		
	wizardControl 
		addPane: wizardPane1. 
		
	wizardControl open. 
	
	