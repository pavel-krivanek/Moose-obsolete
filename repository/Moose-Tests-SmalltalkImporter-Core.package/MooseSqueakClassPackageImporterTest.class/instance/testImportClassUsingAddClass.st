test importing
testImportClassUsingAddClass
	"self debug: #testImportClassUsingAddClass"

	| model importer |
	model := MooseModel new.
	importer := MoosePharoImporterTask new
		model: model;
		importingContext: MooseImportingContext new importClass.
	importer addClass: LANNode.
	importer run.
	self assert: model allClasses size equals: (LANNode subclasses size + 1) * 2