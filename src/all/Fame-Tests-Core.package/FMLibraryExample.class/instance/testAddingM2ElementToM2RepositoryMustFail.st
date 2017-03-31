examples
testAddingM2ElementToM2RepositoryMustFail
	| mm lib |
	mm := self testPragmasAsMetamodel.
	lib := self testCreateSCGLibrary.
	self 
		should: [ mm add: lib ]
		raise: Error.
	self 
		should: [ mm add: lib librarian ]
		raise: Error.
	self 
		should: [ mm add: lib books anyOne ]
		raise: Error