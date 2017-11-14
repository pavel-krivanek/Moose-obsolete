tests
testHealObjectWhichWasMutatedByDifferentMutation

	| victim mutation anotherMutation actual |
	victim := 0@0 corner: 2@3.
	mutation := GHObjectMutation behaviour: GHGhostBehaviourStub new.
	mutation mutate: victim.
	
	anotherMutation := GHObjectMutation behaviour: GHGhostBehaviourStub new.
	self should: [anotherMutation heal: victim] raise: Error.
	
	self assert: (GHMetaMessages extractClassOf: victim) == mutation.
	actual := victim area.	
	self assert: actual selector equals: #area