tests
testCheckSelfIsCreated
	"self debug: #testCheckSelfIsCreated"

	| importTask importer model mseSelf |
	model := MooseModel new.
	importTask := MoosePharoImporterTask new.
	importTask importerClass: SmalltalkImporter.
	importTask
		importingContext:
			(MooseImportingContext new
				importImplicitVariable;
				importAccess;
				mergeClassAndMetaclass;
				yourself).
	importTask doNotRunCandidateOperator.
	importTask addClass: LANNode.
	importTask model: model.
	importer := importTask run.
	mseSelf := model entityNamed: #'Smalltalk::LANNode.send:(Object).self'.
	self assert: mseSelf name equals: 'self'	"mseMethod :=  model entityNamed:  #'Smalltalk::Node.send:(Object)'."	"apparently I cannot access #'Smalltalk::Node.send:(Object).self'"	"self assert: (mseMethod outgoingAccesses byName: 'Smalltalk::Node.self' ifAbsent: [] ) notEmpty."