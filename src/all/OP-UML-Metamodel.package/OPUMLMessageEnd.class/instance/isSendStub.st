operations - stubs
isSendStub
	"This query returns value true if this MessageEnd is a sendEvent."
	
	"pre: {OCL} message->notEmpty()
"
	"{OCL} result = (message.sendEvent->asSet()->includes(self))"
	
	self notYetImplemented
