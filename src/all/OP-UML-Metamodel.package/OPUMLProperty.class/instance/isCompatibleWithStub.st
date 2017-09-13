operations - stubs
isCompatibleWithStub
	"The query isCompatibleWith() determines if this Property is compatible with the specified ParameterableElement. This Property is compatible with ParameterableElement p if the kind of this Property is thesame as or a subtype of the kind of p. Further, if p is a TypedElement, then the type of this Property must be conformant with the type of p."
	
	"{OCL} result = (self.oclIsKindOf(p.oclType()) and (p.oclIsKindOf(TypeElement) implies
self.type.conformsTo(p.oclAsType(TypedElement).type)))"
	
	self notYetImplemented
