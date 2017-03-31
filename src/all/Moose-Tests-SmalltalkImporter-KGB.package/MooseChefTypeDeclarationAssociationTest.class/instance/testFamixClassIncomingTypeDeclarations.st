famix-class
testFamixClassIncomingTypeDeclarations
	self assert: (self model entityNamed: 'C2') queryIncomingTypeDeclarations atTypeScope size equals: 3.
	self
		assert:
			((self model entityNamed: 'C2') queryIncomingTypeDeclarations atTypeScope includes: (self model entityNamed: 'C1')).
	self
		assert:
			((self model entityNamed: 'C2') queryIncomingTypeDeclarations atTypeScope includes: (self model entityNamed: 'C2')).
	self
		assert:
			((self model entityNamed: 'C2') queryIncomingTypeDeclarations atTypeScope includes: (self model entityNamed: 'C3')).
	self assert: (self model entityNamed: 'C3') queryIncomingTypeDeclarations atTypeScope size equals: 3.
	self
		assert:
			((self model entityNamed: 'C3') queryIncomingTypeDeclarations atTypeScope includes: (self model entityNamed: 'C1')).
	self
		assert:
			((self model entityNamed: 'C3') queryIncomingTypeDeclarations atTypeScope includes: (self model entityNamed: 'C2')).
	self
		assert:
			((self model entityNamed: 'C3') queryIncomingTypeDeclarations atTypeScope includes: (self model entityNamed: 'C3'))