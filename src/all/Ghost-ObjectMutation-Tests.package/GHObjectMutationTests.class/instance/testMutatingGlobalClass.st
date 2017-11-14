tests
testMutatingGlobalClass

	| victim mutation actual |
	victim := GHClassStub.
	mutation := GHObjectMutation behaviour: GHGhostBehaviourStub new.
	
	[mutation mutate: victim.
	
	self assert: (GHMetaMessages extractClassOf: victim) == mutation.
	
	actual := victim named: 'test name'.	
	self assert: actual selector equals: #named:]
		ensure: [victim recoverFromGHMutation]