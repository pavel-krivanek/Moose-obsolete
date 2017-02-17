test importing
testImportClassUsingAddCategory
	"self debug: #testImportClassUsingAddCategory"

	| model importer |
	model := MooseModel new.
	importer := MoosePharoImporterTask new
		model: model;
		importingContext: MooseImportingContext new importClass.
	importer addFromPackage: (RPackageOrganizer default packageNamed: #'Moose-TestResources-LAN').
	importer run.
	self assert: model allClasses size equals: (self numberOfClassesIn: #('Moose-TestResources-LAN')) * 2