loading scripts
createModelForPharo
	"self createModelForPharo"
	
	| model importer |
	model := MooseModel new.
	model name: 'Pharo'.
	importer := MoosePharoImporterTask new.
	importer importingContext mergeClassAndMetaclass.
	importer runCandidateOperator.
	importer model: model; addFromPackagesNamed: self pharoPackageNames; runWithProgress.
	model install.