operations - stubs
belongsToPSMStub
	"The operation belongsToPSM () checks if the Region belongs to a ProtocolStateMachine."
	
	"{OCL} result = (if  stateMachine <> null 
then
  stateMachine.oclIsKindOf(ProtocolStateMachine)
else 
  state <> null  implies  state.container.belongsToPSM()
endif )"
	
	self notYetImplemented
