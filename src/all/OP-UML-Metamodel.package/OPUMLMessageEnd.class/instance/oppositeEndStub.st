operations - stubs
oppositeEndStub
	"This query returns a set including the MessageEnd (if exists) at the opposite end of the Message for this MessageEnd."
	
	"pre: {OCL} message->notEmpty()
"
	"{OCL} result = (message->asSet().messageEnd->asSet()->excluding(self))"
	
	self notYetImplemented
