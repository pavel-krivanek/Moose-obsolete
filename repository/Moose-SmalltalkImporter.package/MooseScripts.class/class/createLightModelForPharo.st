loading scripts
createLightModelForPharo
	"
	MessageTally spyOn: [self createLightModelForPharo]
	Time millisecondsToRun: [self createLightModelForPharo]
	607701 - simon.denier 5/16/2009 13:30 - with cache !?!
	 42921 - simon.denier 5/16/2009 13:53 - with cache (first run was buggy because cache not initialized)
	 35584 - simon.denier 5/16/2009 13:57 - without candidate invocation ?!?
	"
	
	| model importer |
	model := MooseModel new.
	model name: 'lightPharo'.
	importer := MoosePharoImporterTask new.
	importer importingContext: (MooseImportingContext new 
									importClassMethodInheritanceAttribute; 
									importPackage;
									mergeClassAndMetaclass;
									yourself)..
	importer doNotRunCandidateOperator.
	importer model: model; addFromPackagesNamed: self pharoPackageNames; runWithProgress.
	model install.