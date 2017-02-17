complete examples
numericalOperationsExample
	"self numericalOperationsExample"
	| wizardControl firstPane middlePane lastPane firstNumberDropList operatorDropList secondNumberDropList |
	<lint: 'Long methods' rationale: 'Just an example of how to use the library ' author: 'cyrille.delaunay'>
	wizardControl := WizardControl new.
	firstPane := WizardFirstPane new.
	middlePane := WizardMiddlePane new.
	lastPane := WizardLastPane new.
	
	wizardControl addPane: firstPane.
	wizardControl addPane: middlePane.
	wizardControl addPane: lastPane.
	
	firstNumberDropList := DropListPart new
								list: #(1 2 3 4 5 6 7 8 9);
								useLatePopulateContents: false.
	operatorDropList := DropListPart new
								list: #(+ - * / );
								useLatePopulateContents: false.
	secondNumberDropList := DropListPart new
								list: #(1 2 3 4 5 6 7 8 9);
								useLatePopulateContents: false.
								
	firstPane 
		row: firstNumberDropList
		associatedTo: #firstNumber.
	middlePane
		row: operatorDropList
		associatedTo: #operator.
	lastPane 
		row: secondNumberDropList
		associatedTo: #secondNumber.
	wizardControl atEndDo: [:aDictionaryOfOutputs |
		|result|
		result := Smalltalk evaluate: 
			(aDictionaryOfOutputs at: #firstNumber) asString,
			(aDictionaryOfOutputs at: #operator) asString,
			(aDictionaryOfOutputs at: #secondNumber) asString.
		UIManager inform: 'The result is: ', result asString.
		].
	wizardControl open