tests
testMutatingObjectWhichWasMutatedByAnotherMutation

	| victim mutation actual anotherMutation |
	victim := 10@20 corner: 30@40.
	mutation := GHObjectMutation behaviour: GHGhostBehaviourStub new.
	mutation mutate: victim.
	
	anotherMutation := GHObjectMutation behaviour: GHGhostBehaviourStub new.
	self should: [anotherMutation mutate: victim] raise: Error.
	
	self assert: (GHMetaMessages extractClassOf: victim) == mutation.
	actual := victim area.	
	self assert: actual selector equals: #area