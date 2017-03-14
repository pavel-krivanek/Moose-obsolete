tests
testImportOneClassAndMethodAndMergeItsMetaclass
	"self debug: #testImportOneClassAndMethodAndMergeItsMetaclass"

	| importTask importer importedMethods |
	importTask := MooseImportClassesTask new.
	importTask importerClass: SmalltalkImporter.
	importTask
		importingContext:
			(MooseImportingContext new
				importClass;
				importMethod;
				mergeClassAndMetaclass;
				yourself).
	importTask addClass: LANNode.
	importer := importTask run.
	importedMethods := importer methods values.
	self assert: importedMethods size equals: 13.
	self assert: importedMethods first class equals: FAMIXMethod