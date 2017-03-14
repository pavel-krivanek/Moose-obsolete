basic examples
textEditorUsing: aMerlinRenderer
	"self itemsSelectorPart"

	| wizardControl  wizardPane1 wizardPane2  textEditorPart |
	wizardControl := WizardControl new.
	wizardControl renderer: aMerlinRenderer.
	wizardPane1 := WizardSinglePane new.
	
	textEditorPart := TextEditorPart  new
							defaultValue: 'type some text';
							yourself.
	
		
	wizardPane1 row: textEditorPart.	
		
	wizardControl 
		addPane: wizardPane1.
		
	wizardControl open. 
	
	