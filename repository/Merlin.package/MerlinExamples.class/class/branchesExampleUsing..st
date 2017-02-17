basic examples
branchesExampleUsing: aMerlinRenderer
	"self branchesExample"
	| wizardControl  wizardPane1  dropListPart textFieldPart wizardPane2 wizardPane3 dropListPart2 |
	wizardControl := WizardControl new.
	wizardControl renderer: aMerlinRenderer.
	
	wizardPane1 := WizardSinglePane new.
	wizardPane2 := WizardFirstPane new.
	wizardPane3 := WizardLastPane new.
	
	dropListPart := DropListPart new
						list: #(a b c d e f);
						callback: [:value :tmpPart |
							(#(a b c d e) includes: value) ifTrue: [
								wizardControl selectBranch: 2.
								dropListPart2 defaultItemSelected: value.
								tmpPart wizardPane refresh.
								]
							ifFalse: [
								tmpPart wizardPane refresh
								]
							];
						yourself.
						
	dropListPart2 := DropListPart new
						list: #(a b c d e f);
						callback: [:value :tmpPart |
							(#(a b c d e) includes: value) ifFalse: [
								wizardControl selectBranch: 1.
								dropListPart defaultItemSelected: value.
								tmpPart wizardPane refresh.
								]
							];
						yourself.
						
	textFieldPart := TextFieldPart new
						inGroupboxNamed: 'Enter your own value';
						defaultValue: 'g';
						yourself.    
	
	wizardPane1 row: dropListPart.
	wizardPane2 row: dropListPart2.
	wizardPane3 row: textFieldPart. 
	
	wizardControl addPane: wizardPane1.
	wizardControl addBranch.
	wizardControl selectBranch: 2.
	wizardControl addPane: wizardPane2.
	wizardControl addPane: wizardPane3.
	wizardControl selectBranch: 1.
	    
		
	wizardControl open. 
	
	