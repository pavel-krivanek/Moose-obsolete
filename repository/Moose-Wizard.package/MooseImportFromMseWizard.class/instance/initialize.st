initialize-release
initialize
	 
	| wizardPane1 wizardPart1 wizardPane2 wizardPart2 wizardPart3 wizardPart3Collection |
	super initialize.
	wizardPane1 := WizardFirstPane named: 'Select a MSE file'.
	wizardPane2 := WizardLastPane named: 'Select the context to import'.
	
	wizardPart1 := ChooseFilePart new.
	
	"wizardPart2 := MooseContextCheckboxesPart  withAll: Dictionary new."
	
	wizardPart3Collection := #('import all' 'use standard FAMIX context' 'use context from all Moose metaModel').
	wizardPart3 := DropListPart new
						list: wizardPart3Collection ; 
						inGroupboxNamed: 'Context strategy'; 
						defaultValue:  1;
						callback: [:outputValue |
							|importingContextClass|
							importingContextClass := (MooseAbstractImportingContext contextFromIndex: (wizardPart3Collection indexOf: outputValue)).
							wizardPane2 removeSubComponentAt: 2.
							importingContextClass ifNotNil: [
								wizardPane2 addPart: (MultiDependentCheckboxesPart new labelsAndDependencies: importingContextClass new entityDependencies) associatedTo: #contextSelected.
								].
							wizardPane2 refresh.
							];
						yourself.
	"wizardPart3 := MooseListOfContextsAvailablePart updatingCorrespondingContextCheckboxesFrom: wizardPart2" .
	

	wizardPane1 addPart: wizardPart1 associatedTo: #mseFilePath.
	

	"wizardPart2 := MooseImportingContextAllCheckboxesDisplayedPart new."	
	wizardPane2 addPart: wizardPart3 associatedTo: #importingContextClass.
	
	self addPane: wizardPane1.
	self addPane: wizardPane2
	

