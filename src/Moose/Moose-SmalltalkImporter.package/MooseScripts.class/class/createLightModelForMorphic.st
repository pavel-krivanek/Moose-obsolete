loading scripts
createLightModelForMorphic
	"
	Time millisecondsToRun: [self createLightModelForMorphic]
	109888 => simon.denier 5/16/2009 12:18 - initial run
	 11974 - simon.denier 5/16/2009 12:51 - with cache
	 7455 - simon.denier 5/16/2009 12:55 - remove Transcript trace
	"
	
	| model importer |
	model := MooseModel new.
	model name: 'lightMorphic'.
	importer := MoosePharoImporterTask new.
	importer importingContext: (MooseImportingContext new 
									importClassMethodInheritanceAttribute; 
									importPackage;
									mergeClassAndMetaclass;
									yourself).
	importer doNotRunCandidateOperator.
	importer model: model; addFromPackagesNamed: (self packageNamesFor: 'Morphic*'); runWithProgress.
	model install.