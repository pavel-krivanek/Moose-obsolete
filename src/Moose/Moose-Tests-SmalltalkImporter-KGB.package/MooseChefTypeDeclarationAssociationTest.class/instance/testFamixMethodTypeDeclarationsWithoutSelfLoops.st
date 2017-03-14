famix-method
testFamixMethodTypeDeclarationsWithoutSelfLoops
	self assert: (self model entityNamed: 'C1.m1()') queryIncomingTypeDeclarations withoutSelfLoops size equals: 0.
	self
		assert:
			((self model entityNamed: 'C2.m3(C2,C3)') queryOutgoingTypeDeclarations withoutSelfLoops atTypeScope
				includes: (self model entityNamed: 'C1')).
	self
		assert: (self model entityNamed: 'C2.m3(C2,C3)') queryOutgoingTypeDeclarations withoutSelfLoops atTypeScope size
		equals: 2.
	self
		assert:
			((self model entityNamed: 'C2.m3(C2,C3)') queryOutgoingTypeDeclarations withoutSelfLoops atTypeScope
				includes: (self model entityNamed: 'C3'))