initialize-release
buildMooseWizardPackageControl
	"Here we initialize the first wizard panel, which is related to selecting the packages
	 that will be added to the model"

	| firstPane packageList packagePanel scriptCheckbox |
	firstPane := WizardFirstPane new.
	
	packageList := RPackage organizer packageNames asSortedCollection: [ :a :b | a < b ].
	packagePanel := MultiSelectionItemSelectorPart new 
		initialList: packageList;
		yourself.
		
	scriptCheckbox := CheckboxPart new 
		label: 'Create a script before importing the model';
		defaultValue: false.
		
	firstPane 
		addPart: packagePanel
		associatedTo: #packagesSelected.
	firstPane 
		addPart: scriptCheckbox 
		associatedTo: #createScript.
		
	self addPane: firstPane