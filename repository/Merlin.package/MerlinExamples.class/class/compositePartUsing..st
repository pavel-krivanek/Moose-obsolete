basic examples
compositePartUsing: aMerlinRenderer
	"self compositePart"

	| wizardControl  wizardPane1  dropListPart checkboxPart textFieldPart compositePart |
	wizardControl := WizardControl new.
	wizardControl renderer: aMerlinRenderer.
	wizardPane1 := WizardSinglePane new.
	
	checkboxPart := CheckboxPart  new
									label: 'select / unselect';
									defaultValue: true
									yourself.
	
	dropListPart := DropListPart  new
									list: #(1 2 3 4);
									defaultValue: 2;
									yourself.
				
	textFieldPart := TextFieldPart new
									defaultValue: 'hey';
									"textFieldHorizontalSize: 100"
									yourself. 
									
	compositePart := CompositePart new
									withTitlesAndParts: {'with checkbox' -> checkboxPart . 'with dropList' -> dropListPart . 'with textField' -> textFieldPart}.
		
		
	wizardPane1 row: compositePart.	
	
		
	wizardControl 
		addPane: wizardPane1. 
		
	wizardControl open. 
	
	