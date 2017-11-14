tests
testShouldDefineRealGhostClass

	| actual |
	actual := ghost ghostClass.
	
	self assert: actual equals: GHObjectGhostStub 