tests
testProcessingClassMetaMessage

	| actual |
	actual := ghost class.
	
	self assert: actual equals: GHObjectGhostStub