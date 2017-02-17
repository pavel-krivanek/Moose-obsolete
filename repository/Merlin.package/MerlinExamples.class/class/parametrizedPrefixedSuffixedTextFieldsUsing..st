basic examples
parametrizedPrefixedSuffixedTextFieldsUsing: aRenderer
	"self parametrizedPrefixedSuffixedTextFields"

	| wizardControl  wizardPane1 wizardPane2 firstTextFieldPart secondTextFieldPart |
	wizardControl := WizardControl new.
	wizardControl renderer: aRenderer.
	wizardPane1 := WizardFirstPane new.
	wizardPane2 := WizardLastPane new.
	
	firstTextFieldPart := TextFieldPart  new
									inGroupboxNamed: 'yop';
									textEntryContents: 'default text';
									prefix: 'Enter text here : ';
									textFieldHorizontalSize: 100;
									yourself.
									
	secondTextFieldPart := TextFieldPart  new
									inGroupboxNamed: 'Same text than previous textField';
									suffix: ' is what you entered before';
									textFieldHorizontalSize: 100;
									defaultValue: [:inputs | (inputs at: #firstTextFieldValue) ];
									yourself.
		
		
	wizardPane1 row: firstTextFieldPart associatedTo: #firstTextFieldValue.
	wizardPane2 row: secondTextFieldPart associatedTo: #secondTextFieldValue requiring: {#firstTextFieldValue}.
		
	wizardControl 
		addPane: wizardPane1 ; 
		addPane: wizardPane2.
		
	wizardControl open. 
	
	