tests
testObjectClassSpec
	| ghost |
	ghost := GHObjectGhostStub new.
	
	self shouldnt: [ghost should beInstanceOf: GHObjectGhostStub] raise: SpecOfFailed.
	self should: [ghost should beInstanceOf: Object] raise: SpecOfFailed