famix-package
testFamixPackageIncomingTypeDeclarations
	self
		assert:
			((self model entityNamed: 'p2') queryIncomingTypeDeclarations
				atScope: FAMIXPackage) size
		equals: 2.
	self
		assert:
			(((self model entityNamed: 'p2') queryIncomingTypeDeclarations
				atScope: FAMIXPackage) includes: (self model entityNamed: 'p1')).
	self
		assert:
			(((self model entityNamed: 'p2') queryIncomingTypeDeclarations
				atScope: FAMIXPackage) includes: (self model entityNamed: 'p2'))