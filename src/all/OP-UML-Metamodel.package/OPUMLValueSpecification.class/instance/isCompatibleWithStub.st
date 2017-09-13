operations - stubs
isCompatibleWithStub
	"The query isCompatibleWith() determines if this ValueSpecification is compatible with the specified ParameterableElement. This ValueSpecification is compatible with ParameterableElement p if the kind of this ValueSpecification is the same as or a subtype of the kind of p. Further, if p is a TypedElement, then the type of this ValueSpecification must be conformant with the type of p."
	
	"{OCL} result = (self.oclIsKindOf(p.oclType()) and (p.oclIsKindOf(TypedElement) implies 
self.type.conformsTo(p.oclAsType(TypedElement).type)))"
	
	self notYetImplemented
