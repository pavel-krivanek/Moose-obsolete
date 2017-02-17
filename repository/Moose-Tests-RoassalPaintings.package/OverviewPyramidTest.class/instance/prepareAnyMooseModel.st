tests
prepareAnyMooseModel

	| model importer models |
	
	models := MooseModel root allModels.
	models notEmpty ifTrue: [ ^ models anyOne ].
	model := MooseModel new.
	model name: 'AST'.
	importer := MoosePharoImporterTask new.
	importer importingContext mergeClassAndMetaclass.
	importer runCandidateOperator.
	importer model: model; addFromPackagesNamed: (MooseScripts packageNamesFor: 'AST*'); runWithProgress.
	^ model.