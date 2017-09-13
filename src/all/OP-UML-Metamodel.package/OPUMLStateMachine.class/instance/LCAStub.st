operations - stubs
LCAStub
	"The operation LCA(s1,s2) returns the Region that is the least common ancestor of Vertices s1 and s2, based on the StateMachine containment hierarchy."
	
	"{OCL} result = (if ancestor(s1, s2) then 
    s2.container
else
	if ancestor(s2, s1) then
	    s1.container 
	else 
	    LCA(s1.container.state, s2.container.state)
	endif
endif)"
	
	self notYetImplemented
