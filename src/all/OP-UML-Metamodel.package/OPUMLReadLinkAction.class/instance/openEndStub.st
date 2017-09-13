operations - stubs
openEndStub
	"Returns the ends corresponding to endData with no value InputPin. (A well-formed ReadLinkAction is constrained to have only one of these.)"
	
	"{OCL} result = (endData->select(value=null).end->asOrderedSet())"
	
	self notYetImplemented
