basic examples
compositeWithParametrizedPartsUsing: aMerlinRenderer
	"self compositeWithParametrizedParts"

	| wizardControl  wizardPane1  dropListPart checkboxPart textFieldPart compositePart mainPart |
				
	wizardControl := WizardControl new.
	wizardControl renderer: aMerlinRenderer.
	wizardPane1 := WizardSinglePane new.
	mainPart := DropListPart new
					list: #(true false);
					inGroupboxNamed: 'the selection will be propagated to all parts';
					defaultValue: 1;
					callback: [ :outputValue |
						checkboxPart selected: outputValue.
						dropListPart selectionIndex: (dropListPart list indexOf: outputValue).
						textFieldPart textEntryContents: outputValue asString. 
						];
					yourself.
	
	checkboxPart := CheckboxPart  new
									label: 'select / unselect';
									defaultValue: true;
									yourself.
	
	dropListPart := DropListPart  new
									list: #(true false);
									defaultValue: 2;
									yourself.
				
	textFieldPart := TextFieldPart new
									defaultValue: 'hey';
									"textFieldHorizontalSize: 100"
									yourself. 
									
	compositePart := CompositePart new
									withTitlesAndParts: {'with checkbox' -> checkboxPart . 'with dropList' -> dropListPart . 'with textField' -> textFieldPart}.
		
	wizardPane1 row: mainPart. 
	wizardPane1 row: compositePart.	
	
		
	wizardControl 
		addPane: wizardPane1. 
		
	wizardControl open. 
	
	