tests
testEqualityOfTwoMutations

	| mutation mutation2 |
	mutation := GHObjectMutation behaviour: GHGhostBehaviourStub new.
	mutation victimClass: Rectangle.
	
	self assert: mutation = mutation.

	mutation2 := GHObjectMutation behaviour: GHGhostBehaviourStub new.
	mutation2 victimClass: Rectangle.

	self assert: mutation = mutation2.	
	self assert: mutation2 = mutation.
	
	mutation2 := GHObjectMutation behaviour: GHGhostBehaviourStub new.
	mutation2 victimClass: Point.
	
	self deny: mutation = mutation2.	
	self deny: mutation2 = mutation.
	