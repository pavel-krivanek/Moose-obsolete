operations - stubs
isCompatibleWithStub
	"The query isCompatibleWith() determines if this ParameterableElement is compatible with the specified ParameterableElement. By default, this ParameterableElement is compatible with another ParameterableElement p if the kind of this ParameterableElement is the same as or a subtype of the kind of p. Subclasses of ParameterableElement should override this operation to specify different compatibility constraints."
	
	"{OCL} result = (self.oclIsKindOf(p.oclType()))"
	
	self notYetImplemented
