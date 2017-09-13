operations - stubs
referredStub
	"Derivation for ProtocolTransition::/referred"
	
	"{OCL} result = (trigger->collect(event)->select(oclIsKindOf(CallEvent))->collect(oclAsType(CallEvent).operation)->asSet())"
	
	self notYetImplemented
