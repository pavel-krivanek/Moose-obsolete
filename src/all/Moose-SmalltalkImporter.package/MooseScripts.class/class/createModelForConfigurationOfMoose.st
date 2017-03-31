loading scripts
createModelForConfigurationOfMoose
	"self createModelForConfigurationOfMoose"

	| model importer packages rpackages |
	
	packages := Set new.
	((ConfigurationOfMoose new project version: #development) packagesForSpecNamed: 'default') do: [ :spec | 
		packages add: spec name ].
	(ConfigurationOfMoose new project version: #development) projects do: [ :project |
		packages addAll: ((project version packagesForSpecNamed: 'default') collect: #name) ].

	rpackages := RPackage organizer packages select: [ :each | 
		packages anySatisfy: [:p | p, '*' match: each name  ]].

	model := MooseModel new.
	model name: 'Moose'.
	importer := MoosePharoImporterTask new.
	importer importingContext 
		mergeClassAndMetaclass";
		computeTypeOfAttributes".
	importer runCandidateOperator.
	importer model: model; 
		addFromPackagesNamed: (rpackages collect: #name);
		runWithProgress.
	model install.
	^ model
