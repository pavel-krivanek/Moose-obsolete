operations - stubs
matchesStub
	"This query returns true if the name of this Gate matches the name of the in parameter Gate, and the messages for the two Gates correspond. The Message for one Gate (say A) corresponds to the Message for another Gate (say B) if (A and B have the same name value) and (if A is a sendEvent then B is a receiveEvent) and (if A is a receiveEvent then B is a sendEvent) and (A and B have the same messageSort value) and (A and B have the same signature value)."
	
	"{OCL} result = (self.getName() = gateToMatch.getName() and 
self.message.messageSort = gateToMatch.message.messageSort and
self.message.name = gateToMatch.message.name and
self.message.sendEvent->includes(self) implies gateToMatch.message.receiveEvent->includes(gateToMatch)  and
self.message.receiveEvent->includes(self) implies gateToMatch.message.sendEvent->includes(gateToMatch) and
self.message.signature = gateToMatch.message.signature)"
	
	self notYetImplemented
