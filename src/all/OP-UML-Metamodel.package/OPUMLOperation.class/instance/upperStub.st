operations - stubs
upperStub
	"If this operation has a return parameter, upper equals the value of upper for that parameter. Otherwise upper has no value."
	
	"{OCL} result = (if returnResult()->notEmpty() then returnResult()->any(true).upper else null endif)"
	
	self notYetImplemented
