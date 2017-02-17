tests
testWizardPanesSecondValueFlow

	|wizardControl wizardPane1 wizardPane2 firstDropListPartPart wizardText wizardLabel secondDropListPart|
	wizardControl := MockWizardControl new.
	wizardPane1 := WizardFirstPane new.
	wizardPane2 := WizardLastPane new.
	
	firstDropListPartPart := DropListPart  new
									inGroupboxNamed: 'Select a number';
									list: #(1 2 3 4);
									defaultValue: 1;
									callback: [:outputValue | 
										dropListSelectedValue := outputValue.
										wizardPane2 removeAllParts.
										wizardLabel := TextPart new text: 'In the second DropList you selected ',(outputValue asString); yourself.
										wizardPane2 row: wizardLabel. 
										wizardPane2 refresh];
									yourself.
	secondDropListPart := DropListPart  new
									inGroupboxNamed: 'Select a number';
									list: #(1 2 3 4);
									defaultValue: 2;
									yourself.									
						
	
	wizardPane1 row: secondDropListPart associatedTo: #firstDropListValue.	
	wizardPane1 row: firstDropListPartPart associatedTo: #firstDropListValue.
	
		
	wizardControl 
		addPane: wizardPane1;
		addPane: wizardPane2.	

	wizardControl atEndDo: [:aDictionaryOfOutputs |
	self assert: (aDictionaryOfOutputs at: #firstDropListValue) = 1.
		].
	wizardControl open. 
	wizardControl performNextButtonAction.
	wizardControl performTerminateButtonAction.
