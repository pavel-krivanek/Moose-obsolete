tests
testObjectSuperclassSpec
	| ghost |
	ghost := GHObjectGhostStub new.
	
	self shouldnt: [ghost should beKindOf: GHObjectGhost] raise: SpecOfFailed.
	self should: [ghost should beKindOf: Object] raise: SpecOfFailed