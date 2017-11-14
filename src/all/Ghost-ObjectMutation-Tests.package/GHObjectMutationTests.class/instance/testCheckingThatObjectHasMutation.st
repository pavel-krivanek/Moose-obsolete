tests
testCheckingThatObjectHasMutation

	| victim mutation |
	victim := 10@20 corner: 30@40.
	mutation := GHObjectMutation behaviour: GHGhostBehaviourStub new.
	
	self deny: victim hasGHMutation.
	
	mutation mutate: victim.
	
	self assert: victim hasGHMutation