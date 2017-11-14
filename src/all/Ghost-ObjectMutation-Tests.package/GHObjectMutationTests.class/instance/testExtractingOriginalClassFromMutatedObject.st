tests
testExtractingOriginalClassFromMutatedObject

	| victim mutation actual |
	mutation := GHObjectMutation behaviour: GHGhostBehaviourStub new.
	
	victim := 10@20 corner: 30@40.
	mutation mutate: victim.
	
	actual := victim ghostClass.	
	self assert: actual equals: Rectangle