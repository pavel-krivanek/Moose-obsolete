tests
testOneClassAndOnePackage
	| mooseModel |
	mooseModel := self
		readMSEStream:
			'(
	(FAMIX.Class (id: 2) (name ''ClassA'') (parentPackage (ref: 201)))
	(FAMIX.Package (id: 201) (name ''aPackage''))	
)' readStream.
	self assert: mooseModel entities notEmpty.
	self assert: (mooseModel allPackages collect: #name) first equals: 'aPackage'.
	self assert: (mooseModel allClasses collect: #name) first equals: 'ClassA'