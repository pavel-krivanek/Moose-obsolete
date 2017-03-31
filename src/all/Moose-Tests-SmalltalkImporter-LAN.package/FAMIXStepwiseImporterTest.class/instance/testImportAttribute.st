tests
testImportAttribute
	"self debug: #testImportAttribute"

	| importTask importer nodeClass |
	importTask := MooseImportClassesTask new.
	importTask importerClass: SmalltalkImporter.
	importTask
		importingContext:
			(MooseImportingContext new
				importClass;
				importAttribute;
				importMethod;
				importAccess;
				mergeClassAndMetaclass;
				yourself).
	importTask addClass: LANNode.
	importer := importTask run.
	nodeClass := importer classes at: LANNode.
	self assert: nodeClass attributes size equals: 2