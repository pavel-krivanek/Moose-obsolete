tests
testCheckingMutationInhetitsFromAnotherClass

	| mutation |
	mutation := GHObjectMutation behaviour: GHGhostBehaviourStub new.
	mutation victimClass: Rectangle.
	
	self assert: (mutation inheritsFrom: Object).
	self deny: (mutation inheritsFrom: String).