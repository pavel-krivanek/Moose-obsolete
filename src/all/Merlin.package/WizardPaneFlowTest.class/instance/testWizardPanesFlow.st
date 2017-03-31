tests
testWizardPanesFlow

	|wizardControl wizardPane1 wizardPane2 firstDropListPartPart wizardText wizardLabel |
	wizardControl := MockWizardControl new.
	wizardPane1 := WizardFirstPane new.
	wizardPane2 := WizardLastPane new.
	
	firstDropListPartPart := DropListPart  new
									inGroupboxNamed: 'Select a number';
									list: #(1 2 3 4);
									defaultValue: 4;
									callback: [:outputValue | 
										dropListSelectedValue := outputValue.
										wizardPane2 removeAllParts.
										wizardLabel := TextPart new text: 'You selected ',(outputValue asString); yourself.
										wizardPane2 row: wizardLabel. 
										wizardPane2 refresh];
									yourself.
									
	wizardPane1 row: firstDropListPartPart associatedTo: #firstDropListValue.
		
	wizardControl 
		addPane: wizardPane1;
		addPane: wizardPane2.	

	wizardControl atEndDo: [:aDictionaryOfOutputs |
	self assert: (aDictionaryOfOutputs at: #firstDropListValue) = 4.
		].
	wizardControl open. 
	wizardControl performNextButtonAction.
	wizardControl performTerminateButtonAction.
