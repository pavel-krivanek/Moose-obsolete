tests
testEqualitySpec
	| ghost |
	ghost := GHObjectGhostStub new.
	
	self shouldnt: [ghost should equal: ghost] raise: SpecOfFailed.
	self should: [ghost should equal: 2] raise: SpecOfFailed.
	self should: [2 should equal: ghost] raise: SpecOfFailed.