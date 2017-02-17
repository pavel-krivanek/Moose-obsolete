famix-package
testFamixPackageOutgoingTypeDeclarations
	self assert: (self model entityNamed: 'p1') queryOutgoingTypeDeclarations atPackageScope size equals: 2.
	self
		assert:
			((self model entityNamed: 'p1') queryOutgoingTypeDeclarations atPackageScope includes: (self model entityNamed: 'p1')).
	self
		assert:
			((self model entityNamed: 'p1') queryOutgoingTypeDeclarations atPackageScope includes: (self model entityNamed: 'p2'))