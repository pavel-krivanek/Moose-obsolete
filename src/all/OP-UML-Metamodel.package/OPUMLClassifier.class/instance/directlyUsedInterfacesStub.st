operations - stubs
directlyUsedInterfacesStub
	"The Interfaces directly used by this Classifier"
	
	"{OCL} result = ((supplierDependency->
  select(oclIsKindOf(Usage) and client->forAll(oclIsKindOf(Interface))))->
    collect(client.oclAsType(Interface))->asSet())"
	
	self notYetImplemented
