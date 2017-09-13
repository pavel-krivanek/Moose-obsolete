operations - stubs
lowerStub
	"If this operation has a return parameter, lower equals the value of lower for that parameter. Otherwise lower has no value."
	
	"{OCL} result = (if returnResult()->notEmpty() then returnResult()->any(true).lower else null endif)"
	
	self notYetImplemented
