basic examples
buttonPartUsing: aMerlinRenderer

	| wizardControl  wizardPane1  dropListPart listPart buttonPart |
	wizardControl := WizardControl new.
	wizardControl renderer: aMerlinRenderer.
	wizardPane1 := WizardSinglePane new.
	
	buttonPart := ButtonPart  new
						label: 'display selection';
						callback: [:requiredInputs :part | 
							part wizardPane refresh.
							UIManager default inform: ('selection : ', (#(a b c d e f g) at: (part requiredInputs at: #selection)))];
						yourself.
	
	listPart := ListPart new
				list: #(a b c d e f g);
				defaultValue: 1;
				useLatePopulateContents: false;
				yourself.
					
	wizardPane1 column: listPart associatedTo: #selection.
	wizardPane1 column: buttonPart requiring: {#selection}.	
		
	wizardControl 
		addPane: wizardPane1. 
		
	wizardControl open. 
	
	