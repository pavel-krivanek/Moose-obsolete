tests
testWizardSinglePaneFlow

	|wizardControl wizardPane1 textFieldPart|
	wizardControl := MockWizardControl new.
	wizardPane1 := WizardSinglePane new.
	
	textFieldPart := TextFieldPart new
									defaultValue: 'hey';
									callback: [:outputValue | 
										dropListSelectedValue := outputValue.];
									yourself. 

	wizardPane1 row: textFieldPart associatedTo: #firstDropListValue.
		
	wizardControl 
		addPane: wizardPane1.	

	wizardControl atEndDo: [:aDictionaryOfOutputs |
	self assert: (aDictionaryOfOutputs at: #firstDropListValue) = 'hey'.
		].
	wizardControl open. 
	wizardControl performTerminateButtonAction.
