operations - stubs
compatibleWithStub
	"The operation compatibleWith takes another multiplicity as input. It returns true if the other multiplicity is wider than, or the same as, self."
	
	"{OCL} result = ((other.lowerBound() <= self.lowerBound()) and ((other.upperBound() = *) or (self.upperBound() <= other.upperBound())))"
	
	self notYetImplemented
