tests
testExecutionOriginalMethodByVictimMetaMessages

	| victim mutation actual |
	mutation := GHObjectMutation behaviour: GHGhostBehaviourStub new.
	
	victim := 0@0 corner: 3@4.
	mutation mutate: victim.
	
	actual := GHVictimMetaMessages executeOriginalMethodOf: victim for: (Message selector: #origin).
	self assert: actual equals: 0@0