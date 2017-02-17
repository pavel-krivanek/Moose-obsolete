loading scripts
createModelForSeaside30
	" self createModelForSeaside30.
	see also DSMVisualization exampleSeaside"

	| model importer |
	Smalltalk at: #WADevelopment ifAbsent: [ ScriptLoader loadSeaside30 ].
	model := MooseModel new.
	model name: 'Seaside 3.0'.
	importer := MoosePharoImporterTask new.
	importer importingContext mergeClassAndMetaclass.
	importer runCandidateOperator.
	importer model: model; 
		addFromPackagesNamed: ((Smalltalk at: #WADevelopment) packages collect: [ :each | each packageName ]);
		runWithProgress.
	model install
