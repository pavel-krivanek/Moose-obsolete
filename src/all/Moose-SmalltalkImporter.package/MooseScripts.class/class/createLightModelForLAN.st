loading scripts
createLightModelForLAN
	"
	Time millisecondsToRun: [self createLightModelForLAN]
	 934 => simon.denier 5/16/2009 12:15 - initial run
	 201 => simon.denier 5/16/2009 12:44 - with PackageOrganizerCache
	"
	
	| model importer |
	model := MooseModel new.
	model name: 'lightLAN'.
	importer := MoosePharoImporterTask new.
	importer importingContext: (MooseImportingContext new 
									importClassMethodInheritanceAttribute; 
									importPackage;
									mergeClassAndMetaclass;
									yourself).
	importer doNotRunCandidateOperator.
	importer model: model; addFromPackagesNamed: (self packageNamesFor: 'Moose-LAN*'); run.
	model install.