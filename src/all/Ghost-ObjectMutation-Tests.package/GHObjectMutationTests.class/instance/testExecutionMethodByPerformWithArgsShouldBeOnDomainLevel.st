tests
testExecutionMethodByPerformWithArgsShouldBeOnDomainLevel

	| victim mutation actual expected |
	mutation := GHObjectMutation behaviour: GHGhostBehaviourStub new.
	victim := 0@0 corner: 3@4.
	mutation mutate: victim.
	
	expected := victim area.
	actual := victim perform: #area withArguments: #().
	self assert: actual selector equals: expected selector