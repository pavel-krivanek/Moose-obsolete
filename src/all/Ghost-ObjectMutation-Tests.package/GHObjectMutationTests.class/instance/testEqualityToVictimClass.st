tests
testEqualityToVictimClass

	| mutation |
	mutation := GHObjectMutation behaviour: GHGhostBehaviourStub new.
	mutation victimClass: Rectangle.
	
	self assert: mutation = Rectangle