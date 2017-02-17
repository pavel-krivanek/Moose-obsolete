famix-package
testFamixPackageTypeDeclarationsWithoutSelfLoops
	self
		assert: (self model entityNamed: 'p2') queryIncomingTypeDeclarations atPackageScope withoutSelfLoops size
		equals: 1.
	self
		assert:
			((self model entityNamed: 'p2') queryIncomingTypeDeclarations atPackageScope withoutSelfLoops
				includes: (self model entityNamed: 'p1')).
	self
		assert: (self model entityNamed: 'p1') queryOutgoingTypeDeclarations atPackageScope withoutSelfLoops size
		equals: 1.
	self
		assert:
			((self model entityNamed: 'p1') queryOutgoingTypeDeclarations atPackageScope withoutSelfLoops
				includes: (self model entityNamed: 'p2'))