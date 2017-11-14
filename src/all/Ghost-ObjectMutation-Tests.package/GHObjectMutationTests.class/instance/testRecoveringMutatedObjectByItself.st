tests
testRecoveringMutatedObjectByItself

	| victim mutation |
	victim := 10@20 corner: 30@40.
	mutation := GHObjectMutation behaviour: GHGhostBehaviourStub new.
	
	mutation mutate: victim.	
	
	victim recoverFromGHMutation.
	self deny: victim hasGHMutation