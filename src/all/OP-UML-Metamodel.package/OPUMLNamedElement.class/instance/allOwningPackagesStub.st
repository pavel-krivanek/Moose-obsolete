operations - stubs
allOwningPackagesStub
	"The query allOwningPackages() returns the set of all the enclosing Namespaces of this NamedElement, working outwards, that are Packages, up to but not including the first such Namespace that is not a Package."
	
	"{OCL} result = (if namespace.oclIsKindOf(Package)
then
  let owningPackage : Package = namespace.oclAsType(Package) in
    owningPackage->union(owningPackage.allOwningPackages())
else
  null
endif)"
	
	self notYetImplemented
