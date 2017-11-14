tests
testGettingClassOfMutatedObjectWithStandardMetaLevel

	| victim mutation actual |
	mutation := GHObjectMutation behaviour: GHGhostBehaviourStub new.
	self assert: mutation mutationBehaviour metaLevel equals: GHMetaLevel standard.
	
	victim := 10@20 corner: 30@40.
	mutation mutate: victim.
	
	actual := victim class.	
	self assert: actual equals: Rectangle