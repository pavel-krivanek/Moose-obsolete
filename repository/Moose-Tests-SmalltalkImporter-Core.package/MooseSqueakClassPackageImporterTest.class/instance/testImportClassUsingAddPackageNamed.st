test importing
testImportClassUsingAddPackageNamed
	"self debug: #testImportClassUsingAddPackageNamed"

	| model importer |
	model := MooseModel new.
	importer := MoosePharoImporterTask new.
	importer
		model: model;
		importingContext: MooseImportingContext new importClass.
	importer addFromPackageNamed: 'Moose-TestResources-LAN'.
	importer run.
	self
		assert: model allClasses size
		equals: 2 * (RPackage organizer packageNamed: #'Moose-TestResources-LAN') regularClasses size