operations - stubs
kindStub
	"Derivation for Connector::/kind : ConnectorKind"
	
	"{OCL} result = (if end->exists(
		role.oclIsKindOf(Port) 
		and partWithPort->isEmpty()
		and not role.oclAsType(Port).isBehavior)
then ConnectorKind::delegation 
else ConnectorKind::assembly 
endif)"
	
	self notYetImplemented
