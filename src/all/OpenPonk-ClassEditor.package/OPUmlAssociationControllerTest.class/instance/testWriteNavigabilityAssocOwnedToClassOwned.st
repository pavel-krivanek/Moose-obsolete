tests
testWriteNavigabilityAssocOwnedToClassOwned
	| first second |
	first := association memberEnds first.
	second := association memberEnds second.
	controller writeNavigability: true to: second.
	self assert: second isNavigable.
	self assert: second owningClass equals: first type