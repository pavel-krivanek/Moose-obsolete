tests
testWizardMiddlePaneFlow

	|wizardControl wizardPane1 wizardPane2 wizardPane3 firstDropListPart wizardText wizardLabel firstListPart listPartSelectedValue|
	wizardControl := MockWizardControl new.
	wizardPane1 := WizardFirstPane new.
	wizardPane2 := WizardMiddlePane new.
	wizardPane3 := WizardLastPane new.
	
	firstDropListPart := DropListPart  new
									inGroupboxNamed: 'Select a number';
									list: #(1 2 3 4);
									defaultValue: 1;
									callback: [:outputValue | 
										dropListSelectedValue := outputValue.];
									yourself.
						
	firstListPart := ListPart  new 
						inGroupboxNamed: 'Same selection than previous dropList';
						defaultValue: 2;
						list: #('un' 'deux' 'trois' 'quatre');
						callback: [:outputValue | 
							listPartSelectedValue := outputValue.];
							yourself.					
	
	wizardPane1 row: firstDropListPart associatedTo: #firstDropListValue.
	wizardPane2 row: firstListPart associatedTo: #secondDropListValue.
	
		
	wizardControl 
		addPane: wizardPane1;
		addPane: wizardPane2;
		addPane: wizardPane3.	

	wizardControl atEndDo: [:aDictionaryOfOutputs |
	self assert: (aDictionaryOfOutputs at: #firstDropListValue) = 1.
	self assert: (aDictionaryOfOutputs at: #secondDropListValue) = 2.
		].
	
	wizardControl open. 
	wizardControl performNextButtonAction.
	wizardControl performNextButtonAction.
	wizardControl performTerminateButtonAction.
