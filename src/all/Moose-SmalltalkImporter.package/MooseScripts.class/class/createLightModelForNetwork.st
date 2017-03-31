loading scripts
createLightModelForNetwork
	"
	Time millisecondsToRun: [self createLightModelForNetwork] 
	 15050 => simon.denier 5/16/2009 12:22 - initial run
	 1602 - simon.denier 5/16/2009 12:52 - with cache
	 503 - simon.denier 5/16/2009 12:55 - remove Transcript trace
	 806 - simon.denier 5/20/2009 10:49 - cache non-initialized
	 373 - simon.denier 5/20/2009 10:52 - cache initialited
	"
	
	| model importer |
	model := MooseModel new.
	model name: 'lightNetwork'.
	importer := MoosePharoImporterTask new.
	importer importingContext: (MooseImportingContext new 
									importClassMethodInheritanceAttribute; 
									importPackage;
									mergeClassAndMetaclass;
									yourself).
	importer doNotRunCandidateOperator.
	importer model: model; addFromPackagesNamed: (self packageNamesFor: 'Network*'); runWithProgress.
	model install.