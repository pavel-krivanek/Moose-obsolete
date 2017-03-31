basic examples
compositePartWithoutSpecifyingTabTitlesUsing: aMerlinRenderer
	"self compositePartWithoutSpecifyingTabTitles"

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
									withParts: {checkboxPart .  dropListPart .  textFieldPart}.
		
		
	wizardPane1 row: compositePart.	
	
		
	wizardControl 
		addPane: wizardPane1. 
		
	wizardControl open. 
	
	