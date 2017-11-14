tests
testGhostsAreNotStateSpecs
	| ghost |
	ghost := GHObjectGhostStub new.
		
	self deny: ghost isStateSpec