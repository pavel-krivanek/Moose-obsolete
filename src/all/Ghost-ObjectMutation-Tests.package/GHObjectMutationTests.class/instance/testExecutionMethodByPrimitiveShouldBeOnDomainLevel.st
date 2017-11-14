tests
testExecutionMethodByPrimitiveShouldBeOnDomainLevel

	| victim mutation actual |
	mutation := GHObjectMutation behaviour: GHGhostBehaviourStub new.
	
	victim := 0@0 corner: 3@4.
	mutation mutate: victim.
	
	actual := victim withArgs: { [ :rect | rect area ] } executeMethod: (Rectangle lookupSelector: #in:).
	
	self assert: actual selector equals: #area