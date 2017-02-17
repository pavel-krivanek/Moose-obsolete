tests
testImportOneClassAndItsMetaclass
	"self debug: #testImportOneClassAndItsMetaclass"

	| importTask importer importedClasses |
	importTask := MooseImportClassesTask new.
	importTask importerClass: SmalltalkImporter.
	importTask importingContext: MooseImportingContext new importClass.
	importTask addClass: LANNode.
	self assert: importTask classes size equals: 1.
	importer := importTask run.
	importedClasses := importer classes.
	self assert: importedClasses values size equals: 6.
	self assert: (importedClasses at: LANNode) class equals: FAMIXClass