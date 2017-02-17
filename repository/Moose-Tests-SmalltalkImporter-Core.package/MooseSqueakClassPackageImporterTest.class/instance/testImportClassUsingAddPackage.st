test importing
testImportClassUsingAddPackage
	"self debug: #testImportClassUsingAddPackage"

	| model importer |
	model := MooseModel new.
	importer := MoosePharoImporterTask new
		model: model;
		importingContext: MooseImportingContext new importClass.
	importer addFromPackage: (RPackage organizer packageNamed: #'Moose-TestResources-LAN').
	importer run.
	self
		assert: model allClasses size
		equals: 2 * (RPackage organizer packageNamed: #'Moose-TestResources-LAN') regularClasses size