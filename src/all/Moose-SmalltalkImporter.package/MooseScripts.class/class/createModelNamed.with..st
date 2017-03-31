loading scripts
createModelNamed: modelName with: aCollectionOfPackageNames
	
	| model importer |
	model := MooseModel new.
	model name: modelName.
	importer := MoosePharoImporterTask new.
	importer importingContext mergeClassAndMetaclass.
	importer runCandidateOperator.
	importer model: model; addFromPackagesNamed: aCollectionOfPackageNames; runWithProgress.
	^ model install.