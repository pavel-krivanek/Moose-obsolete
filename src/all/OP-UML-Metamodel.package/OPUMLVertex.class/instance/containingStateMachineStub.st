operations - stubs
containingStateMachineStub
	"The operation containingStateMachine() returns the StateMachine in which this Vertex is defined."
	
	"{OCL} result = (if container <> null
then
-- the container is a region
   container.containingStateMachine()
else 
   if (self.oclIsKindOf(Pseudostate)) and ((self.oclAsType(Pseudostate).kind = PseudostateKind::entryPoint) or (self.oclAsType(Pseudostate).kind = PseudostateKind::exitPoint)) then
      self.oclAsType(Pseudostate).stateMachine
   else 
      if (self.oclIsKindOf(ConnectionPointReference)) then
          self.oclAsType(ConnectionPointReference).state.containingStateMachine() -- no other valid cases possible
      else 
          null
      endif
   endif
endif

)"
	
	self notYetImplemented
