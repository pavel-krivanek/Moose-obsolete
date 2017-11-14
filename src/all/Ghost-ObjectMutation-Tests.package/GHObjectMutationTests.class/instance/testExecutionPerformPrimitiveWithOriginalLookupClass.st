tests
testExecutionPerformPrimitiveWithOriginalLookupClass

	| victim mutation actual |
	mutation := GHObjectMutation behaviour: GHGhostBehaviourStub new.
	
	victim := 0@0 corner: 3@4.
	mutation mutate: victim.
	
	actual := thisContext object: victim perform: #origin withArguments: #() inClass: Rectangle.
	self assert: actual equals: 0@0