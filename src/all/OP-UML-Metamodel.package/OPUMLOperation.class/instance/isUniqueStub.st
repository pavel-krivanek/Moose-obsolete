operations - stubs
isUniqueStub
	"If this operation has a return parameter, isUnique equals the value of isUnique for that parameter. Otherwise isUnique is true."
	
	"{OCL} result = (if returnResult()->notEmpty() then returnResult()->exists(isUnique) else true endif)"
	
	self notYetImplemented
