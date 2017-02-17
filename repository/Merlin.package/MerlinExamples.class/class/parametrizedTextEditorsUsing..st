basic examples
parametrizedTextEditorsUsing: aRenderer
	"self parametrizedTextFields"

	| wizardControl  wizardPane1 wizardPane2 firstTextFieldPart secondTextFieldPart |
	wizardControl := WizardControl new.
	wizardControl renderer: aRenderer.
	wizardPane1 := WizardFirstPane new.
	wizardPane2 := WizardLastPane new.
	
	firstTextFieldPart := TextEditorPart  new
									inGroupboxNamed: 'yop';
									defaultValue: 'default text';
									useLatePopulateContents: false;
									yourself.
									
	secondTextFieldPart := TextEditorPart  new
									inGroupboxNamed: 'Same text than previous textEditor';
									defaultValue: [:inputs | (inputs at: #firstTextFieldValue) ];
									yourself.
		
		
	wizardPane1 row: firstTextFieldPart associatedTo: #firstTextFieldValue.
	wizardPane2 row: secondTextFieldPart associatedTo: #secondTextFieldValue requiring: {#firstTextFieldValue}.
		
	wizardControl 
		addPane: wizardPane1 ; 
		addPane: wizardPane2.
		
	wizardControl open. 
	
	