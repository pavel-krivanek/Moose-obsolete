creating
createFirstPane

	| wizardPane directoryPart hismoNamePart |

	wizardPane := WizardFirstPane named: 'Hismo importer (1/3)'.

	hismoNamePart := TextFieldPart new 
		inGroupboxNamed: 'Type the name of the Hismo model'.

	directoryPart := DirectoryChoosePart new 
		inGroupboxNamed: 'Select the directory with the MSE files';
		callback: [ :returnedValue | 
			selectedDirectory := returnedValue.
			self createLastPane ];
		yourself.
	
	wizardPane addPart: hismoNamePart associatedTo: #hismoModelName.
	wizardPane row: directoryPart.
	self addPane: wizardPane.
	self validateInput: wizardPane