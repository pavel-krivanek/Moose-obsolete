tests
testImportOneClassAndOneAttributeAndMergeItsMetaclass
	"self debug: #testImportOneClassAndOneAttributeAndMergeItsMetaclass"

	| importTask importer nodeClass |
	importTask := MooseImportClassesTask new.
	importTask importerClass: SmalltalkImporter.
	importTask
		importingContext:
			(MooseImportingContext new
				importClass;
				importAttribute;
				mergeClassAndMetaclass;
				yourself).
	importTask addClass: LANNode.
	importer := importTask run.
	nodeClass := importer classes at: LANNode.
	self assert: nodeClass attributes size equals: 2