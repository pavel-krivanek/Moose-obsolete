operations - stubs
ancestorStub
	"The query ancestor(s1, s2) checks whether Vertex s2 is an ancestor of Vertex s1."
	
	"{OCL} result = (if (s2 = s1) then 
	true 
else 
	if s1.container.stateMachine->notEmpty() then 
	    true
	else 
	    if s2.container.stateMachine->notEmpty() then 
	        false
	    else
	        ancestor(s1, s2.container.state)
	     endif
	 endif
endif  )"
	
	self notYetImplemented
