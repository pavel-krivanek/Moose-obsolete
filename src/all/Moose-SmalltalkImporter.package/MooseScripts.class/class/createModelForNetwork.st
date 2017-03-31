loading scripts
createModelForNetwork
	"
	MessageTally spyOn: [self createModelForNetwork]
	Time millisecondsToRun: [self createModelForNetwork]
	25847 => simon.denier 5/16/2009 12:25 - initial run
	 8716 - simon.denier 5/16/2009 12:52 - with cache
	 5932 - simon.denier 5/16/2009 12:55 - remove Transcript trace
	 7300 - simon.denier 5/23/2009 21:56 - ? perhaps due to memory/gc
	 6900 - simon.denier 5/23/2009 21:51 - removing double registration fo bi link in CandidateListOperator
	 6146 - simon.denier 9/18/2009 16:20 - use PackageOrganizerCache in #addFromPackage:
		"
	
	| model importer |
	model := MooseModel new.
	model name: 'Network'.
	importer := MoosePharoImporterTask new.
	importer importingContext mergeClassAndMetaclass.
	importer runCandidateOperator.
	importer model: model; addFromPackagesNamed: (self packageNamesFor: 'Network*') ; runWithProgress.
	model install.