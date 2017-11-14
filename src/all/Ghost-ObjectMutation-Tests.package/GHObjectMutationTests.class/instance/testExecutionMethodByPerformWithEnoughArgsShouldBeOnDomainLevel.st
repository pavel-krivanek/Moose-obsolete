tests
testExecutionMethodByPerformWithEnoughArgsShouldBeOnDomainLevel

	| victim mutation actual expected |
	mutation := GHObjectMutation behaviour: GHGhostBehaviourStub new.
	victim := 0@0 corner: 3@4.
	mutation mutate: victim.
	
	expected := victim area.
	actual := victim perform: #area withEnoughArguments: #(1 2).
	self assert: actual selector equals: expected selector.
	self assert: actual arguments isEmpty