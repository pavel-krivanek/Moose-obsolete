tests
testASTCore
	| model importer |
	model := MooseModel new.
	importer := MoosePharoImporterTask new.
	importer importingContext 
		mergeClassAndMetaclass;
		computeTypeOfAttributes.
	importer runCandidateOperator.
	self 
		shouldnt: [ importer model: model; 
						addFromPackagesNamed: #('AST-Core');
						run]
		raise: Error.
	self assert: model isEmpty not
	