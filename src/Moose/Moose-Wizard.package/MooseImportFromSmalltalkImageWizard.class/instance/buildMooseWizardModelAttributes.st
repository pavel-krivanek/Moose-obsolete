initialize-release
buildMooseWizardModelAttributes

	| lastPane modelNameTextField mergeClassesCheckbox importSubclassesCheckbox computeAttributesCheckbox importerList importerAttributes strategyDropList |
	lastPane := WizardLastPane new.
	
	modelNameTextField := TextFieldPart new 
		inGroupboxNamed: 'Type the name of the model'; 
		defaultValue: 'MooseModel'.
	
	mergeClassesCheckbox := CheckboxPart new
		label: 'Merge classes and metaclasses'";
		inGroupboxNamed: 'Class / Metaclass'".
	importSubclassesCheckbox := CheckboxPart new
		label: 'Import subclasses'";
		inGroupboxNamed: 'Class / Subclasses'".
	computeAttributesCheckbox := CheckboxPart new
		label: 'Compute type of attributes (using RoelTyper)';
		defaultValue: false;
		"inGroupboxNamed: 'Attributes declared type';"
		yourself.

	" IMPORTER "
	importerList := DropListPart new
		list: { MoosePharoImporterTask name };
		defaultValue: 1;
		inGroupboxNamed: 'Choose an importer';
		yourself.
	importerAttributes := MultiDependentCheckboxesPart new
		labelsAndDependencies: MooseImportingContext entityDependencies;
		inGroupboxNamed: 'Importing Context';  
		yourself.

	strategyDropList := DropListPart new 
		list: self listOfInvocationStrategies; 
		inGroupboxNamed: 'Select a strategy to compute invocation candidates'; 
		defaultValue: 2;
		yourself.

	lastPane 
		addPart: modelNameTextField
		associatedTo: #modelName.
	lastPane 
		addPart: mergeClassesCheckbox
		associatedTo: #mergeClassMetaclass.
	lastPane 
		addPart: importSubclassesCheckbox
		associatedTo: #importSubclasses.
	lastPane 
		addPart: computeAttributesCheckbox
		associatedTo: #computeTypeOfAttributes.
	lastPane 
		addPart: importerList
		associatedTo: #importer.
	lastPane 
		addPart: importerAttributes
		associatedTo: #contextToImport.
	lastPane
		addPart: strategyDropList
		associatedTo: #candidateInvocationStrategy.
		
	self addPane: lastPane.