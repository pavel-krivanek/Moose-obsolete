famix-package
testFamixPackageOutgoingTypeDeclarations
	self
		assert:
			((self model entityNamed: 'p1') queryOutgoingTypeDeclarations
				atScope: FAMIXPackage) size
		equals: 2.
	self
		assert:
			(((self model entityNamed: 'p1') queryOutgoingTypeDeclarations
				atScope: FAMIXPackage) includes: (self model entityNamed: 'p1')).
	self
		assert:
			(((self model entityNamed: 'p1') queryOutgoingTypeDeclarations
				atScope: FAMIXPackage) includes: (self model entityNamed: 'p2'))