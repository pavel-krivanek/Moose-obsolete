loading scripts
createModelForMorphic
	"
	MessageTally spyOn: [self createModelForMorphic]
	Time millisecondsToRun: [self createModelForMorphic] 
	 89583 - simon.denier 5/23/2009 21:45 - double registration for invocation#candidates in CandidateListOperator
	 77117 - simon.denier 5/23/2009 21:48 - avoid double registration because of bidirectional multivalue links
	 61751 - simon.denier 9/18/2009 16:23 - PackageOrganizerCache in addFromPackage:
	"
	
	| model importer |
	model := MooseModel new.
	model name: 'Morphic'.
	importer := MoosePharoImporterTask new.
	importer importingContext mergeClassAndMetaclass.
	importer runCandidateOperator.
	importer model: model; addFromPackagesNamed: (self packageNamesFor: 'Morphic*'); runWithProgress.
	model install.