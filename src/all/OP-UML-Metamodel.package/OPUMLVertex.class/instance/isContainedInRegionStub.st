operations - stubs
isContainedInRegionStub
	"This utility query returns true if the Vertex is contained in the Region r (input argument)."
	
	"{OCL} result = (if (container = r) then
	true
else
	if (r.state->isEmpty()) then
		false
	else
		container.state.isContainedInRegion(r)
	endif
endif)"
	
	self notYetImplemented
