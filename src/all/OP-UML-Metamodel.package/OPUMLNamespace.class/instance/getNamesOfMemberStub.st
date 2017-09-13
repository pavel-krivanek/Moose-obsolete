operations - stubs
getNamesOfMemberStub
	"The query getNamesOfMember() gives a set of all of the names that a member would have in a Namespace, taking importing into account. In general a member can have multiple names in a Namespace if it is imported more than once with different aliases."
	
	"{OCL} result = (if self.ownedMember ->includes(element)
then Set{element.name}
else let elementImports : Set(ElementImport) = self.elementImport->select(ei | ei.importedElement = element) in
  if elementImports->notEmpty()
  then
     elementImports->collect(el | el.getName())->asSet()
  else 
     self.packageImport->select(pi | pi.importedPackage.visibleMembers().oclAsType(NamedElement)->includes(element))-> collect(pi | pi.importedPackage.getNamesOfMember(element))->asSet()
  endif
endif)"
	
	self notYetImplemented
