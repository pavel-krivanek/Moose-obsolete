operations - stubs
qualifiedNameStub
	"When a NamedElement has a name, and all of its containing Namespaces have a name, the qualifiedName is constructed from the name of the NamedElement and the names of the containing Namespaces."
	
	"{OCL} result = (if self.name <> null and self.allNamespaces()->select( ns | ns.name=null )->isEmpty()
then 
    self.allNamespaces()->iterate( ns : Namespace; agg: String = self.name | ns.name.concat(self.separator()).concat(agg))
else
   null
endif)"
	
	self notYetImplemented
