operations - stubs
includesMultiplicityStub
	"The query includesMultiplicity() checks whether this multiplicity includes all the cardinalities allowed by the specified multiplicity."
	
	"pre: {OCL} self.upperBound()->notEmpty() and self.lowerBound()->notEmpty() and M.upperBound()->notEmpty() and M.lowerBound()->notEmpty()"
	"{OCL} result = ((self.lowerBound() <= M.lowerBound()) and (self.upperBound() >= M.upperBound()))"
	
	self notYetImplemented
