tests
testExecutionMethodByPerform1ShouldBeOnDomainLevel

	| victim mutation actual expected |
	mutation := GHObjectMutation behaviour: GHGhostBehaviourStub new.
	victim := 0@0 corner: 3@4.
	mutation mutate: victim.
	
	expected := victim areasOutside: #arg.
	actual := victim perform: #areasOutside: with: #arg.
	self assert: actual selector equals: expected selector