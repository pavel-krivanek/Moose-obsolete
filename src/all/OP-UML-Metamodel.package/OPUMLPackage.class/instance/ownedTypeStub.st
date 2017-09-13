operations - stubs
ownedTypeStub
	"Derivation for Package::/ownedType"
	
	"{OCL} result = (packagedElement->select(oclIsKindOf(Type))->collect(oclAsType(Type))->asSet())"
	
	self notYetImplemented
