operations - stubs
isRedefinitionContextValidStub
	"The query isRedefinitionContextValid() specifies whether the redefinition contexts of this RedefinableElement are properly related to the redefinition contexts of the specified RedefinableElement to allow this element to redefine the other. By default at least one of the redefinition contexts of this element must be a specialization of at least one of the redefinition contexts of the specified element."
	
	"{OCL} result = (redefinitionContext->exists(c | c.allParents()->includesAll(redefinedElement.redefinitionContext)))"
	
	self notYetImplemented
