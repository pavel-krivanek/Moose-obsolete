tests
testImportClassAndInheritance
	"self debug: #testImportClassAndInheritance"

	| importTask importer importedClasses |
	importTask := MooseImportClassesTask new.
	importTask importerClass: SmalltalkImporter.
	importTask
		importingContext:
			(MooseImportingContext new
				importClass;
				importInheritance;
				mergeClassAndMetaclass;
				yourself).
	importTask addClass: LANNode.
	importer := importTask run.
	importedClasses := importer classes.
	self assert: (importedClasses at: LANNode) directSubclasses size equals: 2.
	(importedClasses at: LANNode) directSubclasses
		do: [ :ech | self assert: (#(#LANOutputServer #LANWorkStation) includes: ech name) ].
	self assert: (importedClasses at: LANNode) superclass name equals: #Model