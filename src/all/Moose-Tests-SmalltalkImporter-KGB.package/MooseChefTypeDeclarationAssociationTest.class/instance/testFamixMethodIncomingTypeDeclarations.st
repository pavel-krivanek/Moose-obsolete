famix-method
testFamixMethodIncomingTypeDeclarations
	self assert: (self model entityNamed: 'C1.m1()') queryIncomingTypeDeclarations size equals: 0.
	self assert: (self model entityNamed: 'C2.m3(C2,C3)') queryIncomingTypeDeclarations size equals: 0