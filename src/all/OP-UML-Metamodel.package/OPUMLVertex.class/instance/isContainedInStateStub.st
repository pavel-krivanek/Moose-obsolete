operations - stubs
isContainedInStateStub
	"This utility operation returns true if the Vertex is contained in the State s (input argument)."
	
	"{OCL} result = (if not s.isComposite() or container->isEmpty() then
	false
else
	if container.state = s then 
		true
	else
		container.state.isContainedInState(s)
	endif
endif)"
	
	self notYetImplemented
