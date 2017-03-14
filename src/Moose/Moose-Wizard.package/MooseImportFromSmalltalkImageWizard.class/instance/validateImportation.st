actions
validateImportation
	"final action when the user click on the button ok:
	open a corresponding mooseFinder"
	| importer selectedPackages |
	
	
	selectedPackages := wizardInformations at: #packagesSelected.
	
	(wizardInformations at: #createScript)
		ifTrue: [self generateScriptForPackages: selectedPackages ].
	"we create the moose model with an appopriate name"
	mooseModel := MooseModel new.
	"mooseModel name: (self mooseModelNameFor: selectedPackages)."
	mooseModel name: (wizardInformations at: #modelName).
	"we create the importer"
	importer := self importerSelected new.
	"we set all the inportation parameters to the importer"
	importer
		importingContext: self createImportingContext;
		model: mooseModel;
		addFromPackagesNamed: selectedPackages;
		candidateClass: self candidateListOperatorClass ;
		runWithProgress.

	mooseModel install.
