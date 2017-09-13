operations - stubs
isReceiveStub
	"This query returns value true if this MessageEnd is a receiveEvent."
	
	"pre: {OCL} message->notEmpty()
"
	"{OCL} result = (message.receiveEvent->asSet()->includes(self))"
	
	self notYetImplemented
