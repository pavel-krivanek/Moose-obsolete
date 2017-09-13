operations - stubs
allOwnedNodesStub
	"Returns all the ActivityNodes directly or indirectly owned by this Action. This includes at least all the Pins of the Action."
	
	"{OCL} result = (input.oclAsType(Pin)->asSet()->union(output->asSet()))"
	
	self notYetImplemented
