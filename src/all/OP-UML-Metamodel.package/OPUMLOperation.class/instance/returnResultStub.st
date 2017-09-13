operations - stubs
returnResultStub
	"The query returnResult() returns the set containing the return parameter of the Operation if one exists, otherwise, it returns an empty set"
	
	"{OCL} result = (ownedParameter->select (direction = ParameterDirectionKind::return))"
	
	self notYetImplemented
