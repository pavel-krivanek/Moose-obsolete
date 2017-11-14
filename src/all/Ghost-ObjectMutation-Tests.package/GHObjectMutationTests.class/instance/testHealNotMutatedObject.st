tests
testHealNotMutatedObject

	| victim mutation actual |
	victim := 0@0 corner: 2@3.
	mutation := GHObjectMutation behaviour: GHGhostBehaviourStub new.
		
	mutation heal: victim.
	
	self assert: (GHMetaMessages extractClassOf: victim) == Rectangle.
	actual := victim area.
	self assert: actual equals: 6