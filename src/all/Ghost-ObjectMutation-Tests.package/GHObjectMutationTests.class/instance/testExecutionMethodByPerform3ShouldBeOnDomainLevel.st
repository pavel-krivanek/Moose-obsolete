tests
testExecutionMethodByPerform3ShouldBeOnDomainLevel

	| victim mutation actual expected |
	mutation := GHObjectMutation behaviour: GHGhostBehaviourStub new.
	victim := 0@0 corner: 3@4.
	mutation mutate: victim.
	
	expected := victim allAreasOutsideList: #arg1 startingAt: #arg2 do: #arg3.
	actual := victim perform: #allAreasOutsideList:startingAt:do: with: #arg with: #arg2 with: #arg3.
	self assert: actual selector equals: expected selector