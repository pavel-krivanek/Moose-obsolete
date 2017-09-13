operations - stubs
isOrderedStub
	"If this operation has a return parameter, isOrdered equals the value of isOrdered for that parameter. Otherwise isOrdered is false."
	
	"{OCL} result = (if returnResult()->notEmpty() then returnResult()-> exists(isOrdered) else false endif)"
	
	self notYetImplemented
