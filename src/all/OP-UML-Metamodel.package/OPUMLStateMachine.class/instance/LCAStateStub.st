operations - stubs
LCAStateStub
	"This utility funciton is like the LCA, except that it returns the nearest composite State that contains both input Vertices."
	
	"{OCL} result = (if v2.oclIsTypeOf(State) and ancestor(v1, v2) then
	v2.oclAsType(State)
else if v1.oclIsTypeOf(State) and ancestor(v2, v1) then
	v1.oclAsType(State)
else if (v1.container.state->isEmpty() or v2.container.state->isEmpty()) then 
	null.oclAsType(State)
else LCAState(v1.container.state, v2.container.state)
endif endif endif)"
	
	self notYetImplemented
