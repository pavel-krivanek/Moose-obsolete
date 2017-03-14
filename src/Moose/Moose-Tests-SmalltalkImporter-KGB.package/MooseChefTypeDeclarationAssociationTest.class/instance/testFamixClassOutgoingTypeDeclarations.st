famix-class
testFamixClassOutgoingTypeDeclarations
	self
		assert:
			((self model entityNamed: 'C2') queryOutgoingTypeDeclarations opposites includes: (self model entityNamed: 'C1')).
	self
		assert:
			((self model entityNamed: 'C2') queryOutgoingTypeDeclarations opposites includes: (self model entityNamed: 'C2')).
	self
		assert:
			((self model entityNamed: 'C2') queryOutgoingTypeDeclarations opposites includes: (self model entityNamed: 'C3')).
	self assert: (self model entityNamed: 'C2') queryOutgoingTypeDeclarations opposites size equals: 3.
	self assert: (self model entityNamed: 'C3') queryOutgoingTypeDeclarations opposites size equals: 2.
	self
		assert:
			((self model entityNamed: 'C3') queryOutgoingTypeDeclarations opposites includes: (self model entityNamed: 'C2')).
	self
		assert:
			((self model entityNamed: 'C3') queryOutgoingTypeDeclarations opposites includes: (self model entityNamed: 'C3'))