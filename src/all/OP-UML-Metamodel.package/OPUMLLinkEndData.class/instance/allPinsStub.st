operations - stubs
allPinsStub
	"Returns all the InputPins referenced by this LinkEndData. By default this includes the value and qualifier InputPins, but subclasses may override the operation to add other InputPins."
	
	"{OCL} result = (value->asBag()->union(qualifier.value))"
	
	self notYetImplemented
