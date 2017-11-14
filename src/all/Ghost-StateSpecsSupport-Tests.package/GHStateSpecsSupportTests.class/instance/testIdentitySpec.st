tests
testIdentitySpec
	| ghost |
	ghost := GHObjectGhostStub new.
	
	self shouldnt: [ghost should be: ghost] raise: SpecOfFailed.
	self should: [ghost should be: 2] raise: SpecOfFailed.
	self should: [2 should be: ghost] raise: SpecOfFailed.