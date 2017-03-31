tests
testRobustMSEImport
	| importer model |
	MooseModel resetMeta.
	importer := FMImporter new.
	importer repository: (FMRepository with: MooseModel meta).
	importer fromString: self classWithUnknownAttribute.
	importer run.
	self assert: importer repository elements size equals: 4.
	model := MooseModel new.
	importer repository elements do: [ :each | model add: each ].
	self assert: model allClasses size equals: 2.
	self assert: model allMethods size equals: 1.
	self assert: model allInheritanceDefinitions size equals: 1