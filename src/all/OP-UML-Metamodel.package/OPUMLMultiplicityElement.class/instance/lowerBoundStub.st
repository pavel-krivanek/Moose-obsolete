operations - stubs
lowerBoundStub
	"The query lowerBound() returns the lower bound of the multiplicity as an integer, which is the integerValue of lowerValue, if this is given, and 1 otherwise."
	
	"{OCL} result = (if (lowerValue=null or lowerValue.integerValue()=null) then 1 else lowerValue.integerValue() endif)"
	
	self notYetImplemented
