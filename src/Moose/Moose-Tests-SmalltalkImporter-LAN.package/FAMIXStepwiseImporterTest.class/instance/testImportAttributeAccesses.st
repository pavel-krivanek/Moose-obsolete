tests
testImportAttributeAccesses
	"self debug: #testImportAttributeAccesses"

	| importTask importer nodeClass attr |
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
	self assert: nodeClass attributes size equals: 2.
	attr := nodeClass attributes at: 1.
	self assert: attr readAccesses notEmpty