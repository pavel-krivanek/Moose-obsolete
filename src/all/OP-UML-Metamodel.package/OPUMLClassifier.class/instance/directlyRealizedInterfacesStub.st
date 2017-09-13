operations - stubs
directlyRealizedInterfacesStub
	"The Interfaces directly realized by this Classifier"
	
	"{OCL} result = ((clientDependency->
  select(oclIsKindOf(Realization) and supplier->forAll(oclIsKindOf(Interface))))->
      collect(supplier.oclAsType(Interface))->asSet())"
	
	self notYetImplemented
