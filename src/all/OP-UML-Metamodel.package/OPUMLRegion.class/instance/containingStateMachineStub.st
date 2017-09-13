operations - stubs
containingStateMachineStub
	"The operation containingStateMachine() returns the StateMachine in which this Region is defined."
	
	"{OCL} result = (if stateMachine = null 
then
  state.containingStateMachine()
else
  stateMachine
endif)"
	
	self notYetImplemented
