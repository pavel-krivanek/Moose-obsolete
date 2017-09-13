operations - stubs
redefinitionContextStub
	"The redefinition context of a State is the nearest containing StateMachine."
	
	"{OCL} result = (let sm : StateMachine = containingStateMachine() in
if sm._'context' = null or sm.general->notEmpty() then
  sm
else
  sm._'context'
endif)"
	
	self notYetImplemented
