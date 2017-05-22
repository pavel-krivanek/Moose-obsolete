famix-class
testFamixClassIncomingTypeDeclarations
	self
		assert:
			((self model entityNamed: 'C2') queryIncomingTypeDeclarations
				atScope: FAMIXType) size
		equals: 3.
	self
		assert:
			(((self model entityNamed: 'C2') queryIncomingTypeDeclarations
				atScope: FAMIXType) includes: (self model entityNamed: 'C1')).
	self
		assert:
			(((self model entityNamed: 'C2') queryIncomingTypeDeclarations
				atScope: FAMIXType) includes: (self model entityNamed: 'C2')).
	self
		assert:
			(((self model entityNamed: 'C2') queryIncomingTypeDeclarations
				atScope: FAMIXType) includes: (self model entityNamed: 'C3')).
	self
		assert:
			((self model entityNamed: 'C3') queryIncomingTypeDeclarations
				atScope: FAMIXType) size
		equals: 3.
	self
		assert:
			(((self model entityNamed: 'C3') queryIncomingTypeDeclarations
				atScope: FAMIXType) includes: (self model entityNamed: 'C1')).
	self
		assert:
			(((self model entityNamed: 'C3') queryIncomingTypeDeclarations
				atScope: FAMIXType) includes: (self model entityNamed: 'C2')).
	self
		assert:
			(((self model entityNamed: 'C3') queryIncomingTypeDeclarations
				atScope: FAMIXType) includes: (self model entityNamed: 'C3'))