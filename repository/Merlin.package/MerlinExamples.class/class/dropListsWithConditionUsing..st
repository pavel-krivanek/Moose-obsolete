basic examples
dropListsWithConditionUsing: aRenderer
	"self dropListsWithCondition"

	| wizardControl  wizardPane1  firstDropListPartPart secondDropListPart textPart wizardPane2 |
	wizardControl := WizardControl new.
	wizardControl renderer: aRenderer.
	wizardPane1 := WizardFirstPane new.
	wizardPane2 := WizardLastPane new.
	
	firstDropListPartPart := DropListPart  new
									inGroupboxNamed: 'First number';
									list: #(1 2 3 4 5 6 7 8 9);
									defaultValue: 1;
									yourself.
									
	secondDropListPart := DropListPart  new
									inGroupboxNamed: 'Second number';
									list: #(1 2 3 4 5 6 7 8 9);
									defaultValue: 1;
									yourself.
									
	textPart := TextPart new
					defaultValue: [:requiredInput |
						(requiredInput at: #firstNumber) asString , ' and ',  (requiredInput at: #secondNumber) asString
						];
					yourself.
		
		
	wizardPane1 column: firstDropListPartPart associatedTo: #firstNumber.
	wizardPane1 column: secondDropListPart associatedTo: #secondNumber.
	wizardPane2 row: textPart associatedTo: #result requiring: #(firstNumber secondNumber).
	
	wizardPane1 
		name: 'Sum should be 10';
		condition: [:wizardInformations |
			((wizardInformations at: #firstNumber) + (wizardInformations at: #secondNumber)) = 10] 
		named: 'The sum of the two number has to be equal to 10'.	
	wizardControl 
		addPane: wizardPane1;
		addPane: wizardPane2;
		yourself.
		
	wizardControl open. 
	
	