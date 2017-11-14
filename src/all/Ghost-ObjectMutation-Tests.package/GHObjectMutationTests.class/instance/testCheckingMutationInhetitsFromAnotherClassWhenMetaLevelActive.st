tests
testCheckingMutationInhetitsFromAnotherClassWhenMetaLevelActive

	| mutation |
	mutation := GHObjectMutation behaviour: GHGhostBehaviourStub new.
	mutation victimClass: Rectangle.
	
	GHCurrentMetaLevelDepth increaseFor: [ 
		self assert: (mutation inheritsFrom: Object).
		self deny: (mutation inheritsFrom: String).
	]