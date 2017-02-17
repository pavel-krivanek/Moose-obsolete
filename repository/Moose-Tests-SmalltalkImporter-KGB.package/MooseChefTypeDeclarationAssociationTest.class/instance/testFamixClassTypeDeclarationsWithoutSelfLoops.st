famix-class
testFamixClassTypeDeclarationsWithoutSelfLoops
	self assert: (self model entityNamed: 'C3') queryIncomingTypeDeclarations withoutSelfLoops atTypeScope size equals: 2.
	self
		assert:
			((self model entityNamed: 'C3') queryIncomingTypeDeclarations withoutSelfLoops atTypeScope
				includes: (self model entityNamed: 'C1')).
	self
		assert:
			((self model entityNamed: 'C3') queryIncomingTypeDeclarations withoutSelfLoops atTypeScope
				includes: (self model entityNamed: 'C2')).
	self assert: (self model entityNamed: 'C3') queryOutgoingTypeDeclarations withoutSelfLoops atTypeScope size equals: 1.
	self
		assert:
			((self model entityNamed: 'C3') queryOutgoingTypeDeclarations withoutSelfLoops atTypeScope
				includes: (self model entityNamed: 'C2'))