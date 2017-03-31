tests
testMSEImport
	"self debug: #testMSEImport"

	| importer model |
	MooseModel resetMeta.
	importer := FMImporter new.
	importer repository: (FMRepository with: MooseModel meta).
	importer fromString: self oneClassAndOneMethod.
	importer run.
	self assert: importer repository elements size equals: 2.
	model := MooseModel new.
	importer repository elements do: [ :each | model add: each ].
	self assert: model allClasses size equals: 1.
	self assert: model allMethods size equals: 1