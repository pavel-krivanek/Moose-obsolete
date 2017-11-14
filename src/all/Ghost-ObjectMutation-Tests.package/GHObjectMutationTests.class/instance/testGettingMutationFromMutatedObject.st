tests
testGettingMutationFromMutatedObject

	| victim mutation |
	victim := 10@20 corner: 30@40.
	mutation := GHObjectMutation behaviour: GHGhostBehaviourStub new.
	
	self assert: victim ghMutation == nil.
	
	mutation mutate: victim.
	
	self assert: victim ghMutation == mutation