loading scripts
createMediumModelForNetwork
	"
	Time millisecondsToRun: [self createMediumModelForNetwork] 
	 5485 - simon.denier 5/24/2009 00:22
	"
	
	| model importer |
	model := MooseModel new.
	model name: 'mediumNetwork'.
	importer := MoosePharoImporterTask new.
	importer importingContext mergeClassAndMetaclass.
	importer doNotRunCandidateOperator.
	importer model: model; addFromPackagesNamed: (self packageNamesFor: 'Network*'); runWithProgress.
	model install.