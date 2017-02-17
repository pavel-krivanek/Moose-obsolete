famix-package
testFamixPackageIncomingTypeDeclarations
	self assert: (self model entityNamed: 'p2') queryIncomingTypeDeclarations atPackageScope size equals: 2.
	self
		assert:
			((self model entityNamed: 'p2') queryIncomingTypeDeclarations atPackageScope includes: (self model entityNamed: 'p1')).
	self
		assert:
			((self model entityNamed: 'p2') queryIncomingTypeDeclarations atPackageScope includes: (self model entityNamed: 'p2'))