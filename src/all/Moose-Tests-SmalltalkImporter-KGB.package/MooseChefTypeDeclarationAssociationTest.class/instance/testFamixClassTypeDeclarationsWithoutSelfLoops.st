famix-class
testFamixClassTypeDeclarationsWithoutSelfLoops
	self
		assert:
			((self model entityNamed: 'C3') queryIncomingTypeDeclarations
				withoutSelfLoops atScope: FAMIXType) size
		equals: 2.
	self
		assert:
			(((self model entityNamed: 'C3') queryIncomingTypeDeclarations
				withoutSelfLoops atScope: FAMIXType)
				includes: (self model entityNamed: 'C1')).
	self
		assert:
			(((self model entityNamed: 'C3') queryIncomingTypeDeclarations
				withoutSelfLoops atScope: FAMIXType)
				includes: (self model entityNamed: 'C2')).
	self
		assert:
			((self model entityNamed: 'C3') queryOutgoingTypeDeclarations
				withoutSelfLoops atScope: FAMIXType) size
		equals: 1.
	self
		assert:
			(((self model entityNamed: 'C3') queryOutgoingTypeDeclarations
				withoutSelfLoops atScope: FAMIXType)
				includes: (self model entityNamed: 'C2'))