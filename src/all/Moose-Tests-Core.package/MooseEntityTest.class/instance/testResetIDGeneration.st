tests
testResetIDGeneration
	MooseEntity freshID.
	MooseEntity resetIDGeneration.
	self assert: MooseEntity freshID equals: 1