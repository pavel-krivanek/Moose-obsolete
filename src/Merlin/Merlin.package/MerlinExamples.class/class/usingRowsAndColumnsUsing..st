basic examples
usingRowsAndColumnsUsing: aRenderer
	"self usingRowsAndColumns"

	| wizardControl  wizardPane1 wizardPane2 |
	wizardControl := WizardControl new.
	wizardControl renderer: aRenderer.
	wizardPane1 := WizardFirstPane new.
	wizardPane2 := WizardLastPane new.
	
	wizardPane1 
		row: [:r | 
			r column: (TextFieldPart inGroupboxNamed: 'On my right: a DropList') ; column: (DropListPart new list: #(1 2 3 4 5); inGroupboxNamed: 'on my left: a textField')			
			];
		row: (TextPart new
				text:  'I should be alone in the second row';
				inGroupboxNamed: 'yep';
				yourself
				).
		
	wizardPane2 
		column: (TextPart new text: 'I should be alone in the first column';
					 inGroupboxNamed: 'yep';
					yourself);
		column: [:r | 
			r row: (TextFieldPart inGroupboxNamed: 'Below me: a DropList') ; row: (DropListPart new list: #(1 2 3 4 5); inGroupboxNamed: 'On top of me: a textField')			
			].
		
	wizardControl 
		addPane: wizardPane1 ; 
		addPane: wizardPane2.
		
	wizardControl open. 
	
	