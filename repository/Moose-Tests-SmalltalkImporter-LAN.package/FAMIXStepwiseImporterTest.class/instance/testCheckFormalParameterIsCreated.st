tests
testCheckFormalParameterIsCreated
	"self debug: #testCheckFormalParameterIsCreated"

	| importTask importer mseFormalParameter model |
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
	mseFormalParameter := model entityNamed: #'Smalltalk::LANNode.nextNode:(Object).aNode'.
	self assert: mseFormalParameter name equals: #aNode