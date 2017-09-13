operations - stubs
hasVisibilityOfStub
	"The query hasVisibilityOf() determines whether a NamedElement is visible in the classifier. Non-private members are visible. It is only called when the argument is something owned by a parent."
	
	"pre: {OCL} allParents()->including(self)->collect(member)->includes(n)"
	"{OCL} result = (n.visibility <> VisibilityKind::private)"
	
	self notYetImplemented
