tests
testExecutionMethodByPerform2ShouldBeOnDomainLevel

	| victim mutation actual expected |
	mutation := GHObjectMutation behaviour: GHGhostBehaviourStub new.
	victim := 0@0 corner: 3@4.
	mutation mutate: victim.
	
	expected := victim align: #arg1 with: #arg2.
	actual := victim perform: #align:with: with: #arg with: #arg2.
	self assert: actual selector equals: expected selector