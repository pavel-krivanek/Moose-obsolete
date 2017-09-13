operations - stubs
getNameStub
	"The query getName() returns the name under which the imported PackageableElement will be known in the importing namespace."
	
	"{OCL} result = (if alias->notEmpty() then
  alias
else
  importedElement.name
endif)"
	
	self notYetImplemented
