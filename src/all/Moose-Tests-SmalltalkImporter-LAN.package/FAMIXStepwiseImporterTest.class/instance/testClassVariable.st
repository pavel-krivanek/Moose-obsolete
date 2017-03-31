tests
testClassVariable

	| model importer |
	model := MooseModel new.
	model name: 'Morphic'.
	importer := MoosePharoImporterTask new.
	importer importingContext mergeClassAndMetaclass.
	importer runCandidateOperator.
	importer model: model; addFromPackagesNamed: (MooseScripts packageNamesFor: 'Morphic*'); runWithProgress.
	 
	self shouldnt: [(model entities select: [:e | e isKindOf: FAMIXUnknownVariable ]) do: #typeScope ] raise: Error