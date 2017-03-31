loading scripts
createModelNamed: modelName withPackages: packages importer: importClass candidateClass: candidates mergeClassMetaClass: merge contextItems: context

	| mooseModel importer importingContext |
	
	mooseModel := MooseModel new.
	mooseModel name: modelName.
	
	importingContext := MooseImportingContext new.
	(context select: [:anAssoc | anAssoc value = true] thenCollect: [:each | each key]) do: [ :each | importingContext perform: (#import , each) asSymbol ].
	merge ifTrue: [ importingContext mergeClassAndMetaclass ].
	
	importer := importClass new.
	importer
		importingContext: importingContext;
		model: mooseModel;
		addFromPackagesNamed: packages;
		candidateClass: candidates;
		runWithProgress.

	mooseModel install.