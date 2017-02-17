basic examples
usingCallbackOnDropListUsing: aRenderer
	"self usingCallbackOnDropList"

	| wizardControl  wizardPane1  firstDropListPartPart secondDropListPart |
	wizardControl := WizardControl new.
	wizardControl renderer: aRenderer.
	wizardPane1 := WizardSinglePane new.
	
	firstDropListPartPart := DropListPart  new
									inGroupboxNamed: 'Select an item';
									list: #('un' 'deux' 'trois' 'quatre');
									defaultValue: 'trois';
									callback: [:outputValue :part| 
										secondDropListPart selectionIndex: (secondDropListPart list indexOf: outputValue). 
										part wizardPane refresh.
										];
									yourself.
									
	secondDropListPart := DropListPart  new
									inGroupboxNamed: 'Same selection than dropList on top';
									list: #('un' 'deux' 'trois' 'quatre');
									yourself.
		
		
	wizardPane1 row: firstDropListPartPart associatedTo: #firstDropListValue.
	wizardPane1 row: secondDropListPart associatedTo: #secondDropListValue.
		
	wizardControl 
		addPane: wizardPane1. 
		
	wizardControl open. 
	
	