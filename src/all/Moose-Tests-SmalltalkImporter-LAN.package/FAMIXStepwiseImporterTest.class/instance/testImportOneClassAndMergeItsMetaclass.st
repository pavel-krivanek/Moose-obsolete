tests
testImportOneClassAndMergeItsMetaclass
	"self debug: #testImportOneClassAndMergeItsMetaclass"

	| importTask importer importedClasses |
	importTask := MooseImportClassesTask new.
	importTask importerClass: SmalltalkImporter.
	importTask
		importingContext:
			(MooseImportingContext new
				importClass;
				mergeClassAndMetaclass;
				yourself).
	importTask addClass: LANNode.
	self assert: importTask classes size equals: 1.
	importer := importTask run.
	importedClasses := importer classes.
	self assert: importedClasses values asSet size equals: 3.
	self assert: (importedClasses at: LANNode) class equals: FAMIXClass