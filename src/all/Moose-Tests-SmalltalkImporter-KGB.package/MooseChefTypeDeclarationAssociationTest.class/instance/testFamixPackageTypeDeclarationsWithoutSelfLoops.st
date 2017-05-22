famix-package
testFamixPackageTypeDeclarationsWithoutSelfLoops
	self
		assert:
			((self model entityNamed: 'p2') queryIncomingTypeDeclarations
				atScope: FAMIXPackage) withoutSelfLoops size
		equals: 1.
	self
		assert:
			(((self model entityNamed: 'p2') queryIncomingTypeDeclarations
				atScope: FAMIXPackage) withoutSelfLoops
				includes: (self model entityNamed: 'p1')).
	self
		assert:
			((self model entityNamed: 'p1') queryOutgoingTypeDeclarations
				atScope: FAMIXPackage) withoutSelfLoops size
		equals: 1.
	self
		assert:
			(((self model entityNamed: 'p1') queryOutgoingTypeDeclarations
				atScope: FAMIXPackage) withoutSelfLoops
				includes: (self model entityNamed: 'p2'))