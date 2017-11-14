tests
testMutating

	| victim mutation actual |
	victim := 10@20 corner: 30@40.
	mutation := GHObjectMutation behaviour: GHGhostBehaviourStub new.
	
	mutation mutate: victim.
	
	self assert: (GHMetaMessages extractClassOf: victim) == mutation.
	
	actual := victim area.	
	self assert: actual selector equals: #area