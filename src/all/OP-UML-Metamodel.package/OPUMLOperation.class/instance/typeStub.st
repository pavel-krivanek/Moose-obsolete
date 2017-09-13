operations - stubs
typeStub
	"If this operation has a return parameter, type equals the value of type for that parameter. Otherwise type has no value."
	
	"{OCL} result = (if returnResult()->notEmpty() then returnResult()->any(true).type else null endif)"
	
	self notYetImplemented
