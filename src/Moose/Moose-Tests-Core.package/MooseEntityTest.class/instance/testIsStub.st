tests
testIsStub
	self deny: MooseEntity new isStub.
	self assert: (MooseEntity new privateState 
					attributeAt: #privateIsStub put: true;
					yourself) isStub