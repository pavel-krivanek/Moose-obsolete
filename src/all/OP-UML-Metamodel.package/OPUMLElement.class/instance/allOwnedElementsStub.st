operations - stubs
allOwnedElementsStub
	"The query allOwnedElements() gives all of the direct and indirect ownedElements of an Element."
	
	"{OCL} result = (ownedElement->union(ownedElement->collect(e | e.allOwnedElements()))->asSet())"
	
	self notYetImplemented
