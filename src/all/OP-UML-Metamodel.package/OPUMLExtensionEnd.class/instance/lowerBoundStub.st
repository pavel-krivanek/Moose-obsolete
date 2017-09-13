operations - stubs
lowerBoundStub
	"The query lowerBound() returns the lower bound of the multiplicity as an Integer. This is a redefinition of the default lower bound, which normally, for MultiplicityElements, evaluates to 1 if empty."
	
	"{OCL} result = (if lowerValue=null then 0 else lowerValue.integerValue() endif)"
	
	self notYetImplemented
